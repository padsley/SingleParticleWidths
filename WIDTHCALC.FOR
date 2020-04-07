      PROGRAM WIDTHCALC
     
      implicit none
     
      INTEGER FNODE, FL, Z1, Z2, A1, A2, FNODE, FL, Kin
      REAL F
      REAL R
      REAL R0
      REAL E
      REAL HBARC
      REAL FSON
      REAL CHSQ
     
     
      WRITE(*,*)"*******STARTING THE CALCULATION OF THE WIDTHS*******"
     
      HBARC=197.327
      FSCON=137.036
      CHSQ=HBARC/FSCON
      

!     R0 in fm
      R0=1.25
      
      
!     Change the values below to get the correct system for the calculation      
      A1=1
      A2=72
      Z1=1
      Z2=36
      
!     1f5/2
      FNODE=1
      FL=3
      Kin=4096

!     Energy in MeV, I guess      
      E=3.5
      
      R=R0*(A1**(1./3.)+A2**(1./3.))
      WRITE(*,*)"R = ",R
      
c      SUBROUTINE BIND(U,F,DR,RM,FNODE,FL,Kin,FK,ETA,V,E,FK2,ISW,IERR,D)
     
     
      
!       CALL BIND(,F,0.01,)

      WRITE(*,*)"F = ",F
     
      END
