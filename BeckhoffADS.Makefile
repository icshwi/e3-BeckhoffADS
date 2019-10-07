#
#  Copyright (c) 2019    European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Monday, October  7 14:36:12 CEST 2019
# version : 0.0.2
#
## The following lines are mandatory, please don't change them.
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS


## Exclude linux-ppc64e6500
#EXCLUDE_ARCHS += linux-ppc64e6500
#EXCLUDE_ARCHS += linux-corei7-poky

USR_CXXFLAGS_Linux += -std=c++11
USR_CXXFLAGS_Linux += -Wextra

APP:=
APPSRC:=AdsLib

HEADERS += $(APPSRC)/AdsDef.h
HEADERS += $(APPSRC)/AdsLib.h

SOURCES += $(APPSRC)/AdsDef.cpp
SOURCES += $(APPSRC)/AdsLib.cpp
SOURCES += $(APPSRC)/AmsConnection.cpp
SOURCES += $(APPSRC)/AmsPort.cpp
SOURCES += $(APPSRC)/AmsRouter.cpp
SOURCES += $(APPSRC)/Log.cpp
SOURCES += $(APPSRC)/NotificationDispatcher.cpp
SOURCES += $(APPSRC)/Sockets.cpp
SOURCES += $(APPSRC)/Frame.cpp

db: 

.PHONY: db 


vlibs:

.PHONY: vlibs


