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
import Qt 4.7
import "../AppFW"

// NavApp is an entry point to the navigation application
DynamicApp {
    id: app

    // Properties from DynamicApp
    toolbarHandler: mainView

    // By the default the application is right of the screen
    // when activated, it is moved to x position 0
    x: 2*document.width

    // mainViewView contains the real functionality
    // of the NavApp application
    NavMainView {
        id: mainView
        anchors.fill: parent
    }

    // Used toolbar button sets
    DetailsButtonsMain{ id: buttonsMain }
    DetailsButtonsRoute { id: buttonsRoute }
    DetailsButtonsLocation { id: buttonsLocation }

    // The 'current' state is entered when the Log application becomes active
    // AND the application dimensions have been set by the Loader component.
    // Essentially, this means that the view is
    // slided to the display fromtop of the screen. When deactivating
    // the application, a reverse transition is done
    states:
        State {
            name: "current"
            when: activeApp
            StateChangeScript { script: refresh() }
            PropertyChanges { target:app; x:0 }
            StateChangeScript { script: {mainView.setContext() } }
        }

    transitions: [
        Transition {
           to: "current"
           NumberAnimation { properties: "x"; easing.type: "InOutQuad"; duration: 500 }
        },
        Transition {
           from: "current"
           NumberAnimation { properties: "x"; easing.type: "InOutQuad"; duration: 500 }
           // When leaving navitation app, force semitransparent controls off
           ScriptAction { script: transparentControls(false) }
        }
    ]
}
