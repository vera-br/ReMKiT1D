!-----------------------------------------------------------------------------------------------------------------------------------
! This file is part of ReMKiT1D.
!
! ReMKiT1D is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as 
! published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
!
! ReMKiT1D is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
!
! You should have received a copy of the GNU General Public License along with ReMKiT1D. If not, see <https://www.gnu.org/licenses/>. 
!
! Copyright 2023 United Kingdom Atomic Energy Authority (stefan.mijin@ukaea.uk)
!-----------------------------------------------------------------------------------------------------------------------------------
submodule (operator_abstract_class) operator_abstract_procedures
    !! author: Stefan Mijin 
    !! 
    !! Contains module procedures associated with the abstract operator class

implicit none

!-----------------------------------------------------------------------------------------------------------------------------------
contains
!-----------------------------------------------------------------------------------------------------------------------------------
module subroutine noUpdate(this,varCont) 
    !! Default operator update function - does nothing 

    class(Operator)         ,intent(inout)  :: this
    type(VariableContainer) ,intent(in)     :: varCont

    if (assertions) then
        call assert(this%isDefined(),"Attempted to update undefined operator bject")
        call assert(varCont%isDefined(),"Attempted to update operator object by passing undefined variable container")
    end if

end subroutine noUpdate
!-----------------------------------------------------------------------------------------------------------------------------------
!-----------------------------------------------------------------------------------------------------------------------------------
end submodule operator_abstract_procedures
!-----------------------------------------------------------------------------------------------------------------------------------
