;; extras.jl -- handle extra functions
;; $Id: extras.jl,v 1.93 2003/10/21 16:17:59 jsh Exp $

;; Copyright (C) 1999 John Harper <john@dcs.warwick.ac.uk>

;; This file is part of sawfish.

;; sawfish is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; sawfish is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with sawfish; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

(declare (in-module user))

;; magic comment to get an alias installed
;; (define-structure-alias sawfish-extras sawfish.wm.extras)

  (defcustom use-custom-font-color '()
    "Use custom font colors for frames"
    :type boolean
    :group appearance
    :after-set (lambda () (update-frame-font-color)))

  (defcustom frame-font-active-color "black"
    "Font color for active frames"
    :type color
    :group appearance
    :depends use-custom-font-color
    :after-set (lambda () (update-frame-font-color)))

  (defcustom frame-font-inactive-color "black"
    "Font color for inactive frames"
    :type color
    :group appearance
    :depends use-custom-font-color
    :after-set (lambda () (update-frame-font-color)))