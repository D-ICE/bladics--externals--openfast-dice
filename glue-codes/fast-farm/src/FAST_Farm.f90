!**********************************************************************************************************************************
!> ## FAST_Farm
!! The FAST_Farm, FAST_Farm_Subs, and FAST_Farm_Types modules make up a driver for the multi-turbine FAST.Farm code. 
!! FAST_Farms_Types will be auto-generated by the FAST registry program, based on the variables specified in the
!! FAST_Farm_Registry.txt file.
!!
! ..................................................................................................................................
!! ## LICENSING
!! Copyright (C) 2017  Bonnie Jonkman, independent contributor
!! Copyright (C) 2017  National Renewable Energy Laboratory
!!
!!    This file is part of FAST_Farm.
!!
!! Licensed under the Apache License, Version 2.0 (the "License");
!! you may not use this file except in compliance with the License.
!! You may obtain a copy of the License at
!!
!!     http://www.apache.org/licenses/LICENSE-2.0
!!
!! Unless required by applicable law or agreed to in writing, software
!! distributed under the License is distributed on an "AS IS" BASIS,
!! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
!! See the License for the specific language governing permissions and
!! limitations under the License.
!**********************************************************************************************************************************
PROGRAM FAST_Farm

   USE FAST_Farm_Subs

   IMPLICIT NONE

   ! Local parameters:
   
   ! Other/Misc variables
INTEGER(IntKi)                        :: i_turb                                  ! current turbine number
INTEGER(IntKi)                        :: n_t_global                              ! simulation time step, loop counter for global simulation
INTEGER(IntKi)                        :: ErrStat                                 ! Error status
CHARACTER(ErrMsgLen)                  :: ErrMsg                                  ! Error message
real(dbki)                            :: t                                       ! current time

   ! data for restart:
CHARACTER(1024)                       :: InputFileName                           ! Rootname of the checkpoint file
CHARACTER(1024)                       :: CheckpointRoot                          ! Rootname of the checkpoint file
CHARACTER(20)                         :: FlagArg                                 ! flag argument from command line
INTEGER(IntKi)                        :: Restart_step                            ! step to start on (for restart) 

   ! data for SimStatus/RunTimes:
REAL(DbKi)                            :: PrevSimTime        !< Previous time message was written to screen (s > 0)
REAL(ReKi)                            :: PrevClockTime      !< Previous clock time in seconds past midnight
INTEGER                               :: SimStrtTime (8)    !< An array containing the elements of the start time (after initialization).
INTEGER                               :: ProgStrtTime (8)   !< An array containing the elements of the program start time (before initialization).
REAL(ReKi)                            :: SimStrtCPU         !< User CPU time for simulation (without intialization)
REAL(ReKi)                            :: ProgStrtCPU        !< User CPU time for program (with intialization)

! these should probably go in the FAST.Farm registry:
type(All_FastFarm_Data)               :: farm  
 
!FAST.Farm Driver
!     Initialization
!     Initial Calculate Output
!     Time Increment:
!        Update States
!        Calculate Output
!     End
   

      ! Init NWTC_Library, display copyright and version information:
   CALL NWTC_Init() ! open console for writing
   ProgName = Farm_Ver%Name

   CALL DATE_AND_TIME ( Values=ProgStrtTime )                        ! Let's time the whole simulation
   CALL CPU_TIME ( ProgStrtCPU )                                    ! Initial time (this zeros the start time when used as a MATLAB function)
   
   farm%p%NumTurbines = 0
   t = 0
   
   InputFileName = "" ! make sure we don't think this is a "default" inputFileName if not specified on command line
   CALL CheckArgs( InputFileName, ErrStat=ErrStat, Flag=FlagArg )

   if (ErrStat/=0) then
      call ProgAbort('', TrapErrors=.FALSE., TimeWait=3._ReKi )
   else if ( len( trim(FlagArg) ) > 0 ) then ! Any other flag (-v,-h) end normally
      call NormStop()
   endif

   CALL FAST_ProgStart( Farm_Ver ) ! put this after CheckArgs because CheckArgs assumes we haven't called this routine, yet.
   
   IF ( TRIM(FlagArg) == 'RESTART' ) THEN ! Restart from checkpoint file
      CheckpointRoot = InputFileName
   !   CALL FAST_RestoreFromCheckpoint_Tary(t_initial, Restart_step, Turbine, CheckpointRoot, ErrStat, ErrMsg  )
   !      CALL CheckError( ErrStat, ErrMsg, 'during restore from checkpoint'  )           
   !   
   ELSE
      Restart_step = 0

      !...............................................................................................................................
      ! Initialization
      !............................................................................................................................... 
      
      call Farm_Initialize( farm, InputFileName, ErrStat, ErrMsg )
         CALL CheckError( ErrStat, ErrMsg, 'during driver initialization' )
            
      !...............................................................................................................................
      ! Initial Calculate Output
      !............................................................................................................................... 
         
      CALL SimStatus_FirstTime( PrevSimTime, PrevClockTime, SimStrtTime, SimStrtCPU, t, farm%p%TMax )
         
      call FARM_InitialCO(farm, ErrStat, ErrMsg)   
         CALL CheckError( ErrStat, ErrMsg, 'during initial calculate output' )
      
   END IF
   
   
      
   !...............................................................................................................................
   ! Time Increment:
   !...............................................................................................................................         
   
   DO n_t_global = Restart_step, farm%p%n_TMax - 2

   !   ! write checkpoint file if requested
   !   IF (mod(n_t_global, Turbine(1)%p_FAST%n_ChkptTime) == 0 .AND. Restart_step /= n_t_global) then
   !      CheckpointRoot = TRIM(Turbine(1)%p_FAST%OutFileRoot)//'.'//TRIM(Num2LStr(n_t_global))
   !      
   !      CALL FAST_CreateCheckpoint_Tary(t_initial, n_t_global, Turbine, CheckpointRoot, ErrStat, ErrMsg)
   !         IF(ErrStat >= AbortErrLev .and. AbortErrLev >= ErrID_Severe) THEN
   !            ErrStat = MIN(ErrStat,ErrID_Severe) ! We don't need to stop simulation execution on this error
   !            ErrMsg = TRIM(ErrMsg)//Newline//'WARNING: Checkpoint file could not be generated. Simulation continuing.'
   !         END IF
   !         CALL CheckError( ErrStat, ErrMsg  )
   !   END IF
   !
   !   
      ! this takes data from n_t_global and gets values at n_t_global + 1
      t = n_t_global*farm%p%DT_low
      

      CALL FARM_UpdateStates(t, n_t_global, farm, ErrStat, ErrMsg)   
     
      CALL CheckError( ErrStat, ErrMsg  )
   
      t = (n_t_global+1)*farm%p%DT_low
      

      CALL FARM_CalcOutput(t, farm, ErrStat, ErrMsg)   

      CALL CheckError( ErrStat, ErrMsg  )
      
      CALL SimStatus( PrevSimTime, PrevClockTime, t, farm%p%TMax )
         
   END DO ! n_t_global
   
   
   !...............................................................................................................................
   ! End:
   !...............................................................................................................................         
   
   call FARM_End(farm, ErrStat, ErrMsg)
   
   CALL RunTimes( ProgStrtTime, ProgStrtCPU, SimStrtTime, SimStrtCPU, t )   
   call NormStop()
   
CONTAINS
   !...............................................................................................................................
   SUBROUTINE CheckError(ErrID,Msg,ErrLocMsg)
   ! This subroutine sets the error message and level and cleans up if the error is >= AbortErrLev
   !...............................................................................................................................

         ! Passed arguments
      INTEGER(IntKi), INTENT(IN)           :: ErrID       ! The error identifier (ErrStat)
      CHARACTER(*),   INTENT(IN)           :: Msg         ! The error message (ErrMsg)
      CHARACTER(*),   INTENT(IN), OPTIONAL :: ErrLocMsg   ! an optional message describing the location of the error

      CHARACTER(1024)                      :: SimMsg      
      
      INTEGER(IntKi)                        :: ErrStat2   ! Error status
      CHARACTER(ErrMsgLen)                  :: ErrMsg2    ! Error message
      
      
      IF ( ErrID /= ErrID_None ) THEN
         CALL WrScr( NewLine//TRIM(Msg)//NewLine )
         IF ( ErrID >= AbortErrLev ) THEN
            
            IF (PRESENT(ErrLocMsg)) THEN
               SimMsg = ErrLocMsg
            ELSE
               ! make sure farm%FWrap() is allocated!
               SimMsg = 'at simulation time '//TRIM(Num2LStr(farm%FWrap(1)%m%Turbine%m_FAST%t_global))//' of '//TRIM(Num2LStr(farm%FWrap(1)%m%Turbine%p_FAST%TMax))//' seconds'
            END IF
            
            call FARM_End(farm, ErrStat2, ErrMsg2)                                 
            call ProgAbort('', TrapErrors=.FALSE., TimeWait=3._ReKi )
            
         END IF
         
      END IF


   END SUBROUTINE CheckError   
END PROGRAM FAST_Farm
!**********************************************************************************************************************************