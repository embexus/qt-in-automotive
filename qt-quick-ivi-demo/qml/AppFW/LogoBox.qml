/** This file is part of QtQuickIVIDemo**

Copyright  2010 Nokia Corporation and/or its subsidiary(-ies).*
All rights reserved.

Contact:  Nokia Corporation qt-info@nokia.com

You may use this file under the terms of the BSD license as follows:

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

* Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.
* Neither the name of Nokia Corporation and its Subsidiary(-ies) nor
  the names of its contributors may be used to endorse or promote
  products derived from this software without specific prior written
  permission.


THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
*/
import QtQuick 1.1

// A component displaying Digia and Qt
// logos with a background
Rectangle {
    id: background
    border.width: 2
    color: "black"
    border.color:"white"
    width:  parent.width
    height: parent.height-4
    radius: 15
    opacity: 0.5

    Image {
        id: qtLogo
        source: "../images/Qt_logo.png"
        anchors.verticalCenter: background.verticalCenter
        anchors.verticalCenterOffset: 4
        anchors.left: background.left
        anchors.leftMargin: 20
    }

    Image {
        id: digiaLogo
        source: "../images/Digia_logo.svg"
        anchors.verticalCenter: background.verticalCenter
        anchors.verticalCenterOffset: 0
        anchors.right: background.right
        anchors.rightMargin: 10
    }
}




