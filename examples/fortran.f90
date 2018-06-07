! Accessed by:    Erick Edward Shepherd
! Accessed on:    2018-06-06
! Language:       Fortran
! Source entity:  CodeMirror
! Source site:    codemirror.net/mode/fortran/index.html
! 
! Purpose:        Example to test plugin success in syntax highlighting.
! 
! License:        MIT License
! 
!                 Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
!                 and others
! 
!                 Permission is hereby granted, free of charge, to any person 
!                 obtaining a copy of this software and associated  
!                 documentation files (the "Software"), to deal in the Software
!                 without restriction, including without limitation the rights 
!                 to use, copy, modify, merge, publish, distribute, sublicense,
!                 and/or sell copies of the Software, and to permit persons to 
!                 whom the Software is furnished to do so, subject to the 
!                 following conditions:
! 
!                 The above copyright notice and this permission notice shall
!                 be included in all copies or substantial portions of the 
!                  Software.
! 
!                 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY  
!                 KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE  
!                 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
!                 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
!                 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
!                 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR  
!                 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
!                 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  

! Example Fortran code
  program average

  ! Read in some numbers and take the average
  ! As written, if there are no data points, an average of zero is returned
  ! While this may not be desired behavior, it keeps this example simple

  implicit none

  real, dimension(:), allocatable :: points
  integer                         :: number_of_points
  real                            :: average_points=0., positive_average=0., negative_average=0.

  write (*,*) "Input number of points to average:"
  read  (*,*) number_of_points

  allocate (points(number_of_points))

  write (*,*) "Enter the points to average:"
  read  (*,*) points

  ! Take the average by summing points and dividing by number_of_points
  if (number_of_points > 0) average_points = sum(points) / number_of_points

  ! Now form average over positive and negative points only
  if (count(points > 0.) > 0) then
     positive_average = sum(points, points > 0.) / count(points > 0.)
  end if

  if (count(points < 0.) > 0) then
     negative_average = sum(points, points < 0.) / count(points < 0.)
  end if

  deallocate (points)

  ! Print result to terminal
  write (*,'(a,g12.4)') 'Average = ', average_points
  write (*,'(a,g12.4)') 'Average of positive points = ', positive_average
  write (*,'(a,g12.4)') 'Average of negative points = ', negative_average

  end program average
