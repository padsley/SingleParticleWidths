      PROGRAM WIDTHCALC
     
      implicit none
     
      INTEGER FNODE, FL, Z1, Z2, A1, A2, Kin, IERR, ISW
      REAL F, FK, FK2
      REAL R, RM
      REAL R0, R0_OMP, A_OMP, RC_OMP
      REAL E, U
      REAL HBARC, FMU, VFACT, ETAK
      REAL FSCON
      REAL CHSQ
      REAL DR, ETA, DEE

!     DR = radial step size      
      DR=0.01 
     
!     ISW = Search on potential parameters
      ISW=0
     
      WRITE(*,*)"*******STARTING THE CALCULATION OF THE WIDTHS*******"
     
      HBARC=197.327
      FSCON=137.036
      CHSQ=HBARC/FSCON
      

!     R0 in fm for the Coulomb penetrability part of the code
      R0=1.25
      
!     OMP parameters from the Iliadis fitting in his paper
      R0_OMP=1.17
      A_OMP=0.69
      RC_OMP=1.28
      
!     Change the values below to get the correct system for the calculation      
      A1=1
      A2=72
      Z1=1
      Z2=36
      
      
      FMU=A1*A2/(A1+A2)
! Sommerfeld parameter
      VFACT=2.0*FMU/HBARC**2
      ETAK=CHSQ*Z1*Z2*VFACT
      ETA=0
      FK=0
      FK2=0
      
!     1f5/2
      FNODE=1
      FL=3
      Kin=4096

!     Energy in MeV, I guess      
      E=3.5
      
      R=R0*(A1**(1./3.)+A2**(1./3.))
      WRITE(*,*)"R = ",R
      
c      SUBROUTINE BIND(U,F,DR,RM,FNODE,FL,Kin,FK,ETA,V,E,FK2,ISW,IERR,D)
     
     
      
      CALL BIND(U,F,DR,RM,FNODE,FL,Kin,FK,ETA,V,E,FK2,ISW,IERR,DEE)

      WRITE(*,*)"F = ",F
     
      END
