-- setup App Store menu
(
    local stringAppStoreDefaultMenu = "App Store"

    if menuMan.registerMenuContext 0x2adadafb then
    (
        -- Get the main menu bar
        local mainMenuBar = menuMan.getMainMenuBar()

        -- Create the menu
        local subMenu = menuMan.createMenu stringAppStoreDefaultMenu
        local menuPos = mainMenuBar.numItems()
        local submenuItem = menuMan.createSubMenuItem "test" subMenu

        mainMenuBar.addItem submenuItem menuPos
        -- redraw the menu bar
        menuMan.updateMenuBar()
    )


    local stringMacroScriptName = "AvizStudioTools_Setup" 
    local stringMacroScriptCategory = "AvizStudioTools"
    if menuMan.registerMenuContext 0x3947e3a1 then
    (
        -- this should always succeed
        local exchangeMenu = menuMan.findMenu stringAppStoreDefaultMenu

        -- create subMenu 
        local subMenu = menuMan.createMenu stringMacroScriptCategory

        local actionItem1 = menuMan.createActionItem "ATilesTool" stringMacroScriptCategory
        subMenu.addItem actionItem1 -1

        local actionItem2 = menuMan.createActionItem "ATree3D" stringMacroScriptCategory
        subMenu.addItem actionItem2 -1

        local actionItem3 = menuMan.createActionItem "A2DimageActions" stringMacroScriptCategory
        subMenu.addItem actionItem3 -1

        local actionItem4 = menuMan.createActionItem "AColorManager" stringMacroScriptCategory
        subMenu.addItem actionItem4 -1

        local actionItem5 = menuMan.createActionItem "ASnapshots" stringMacroScriptCategory
        subMenu.addItem actionItem5 -1

        local actionItem6 = menuMan.createActionItem "ASmartObjects" stringMacroScriptCategory
        subMenu.addItem actionItem6 -1

        local actionItem7 = menuMan.createActionItem "AHelper" stringMacroScriptCategory
        subMenu.addItem actionItem7 -1

        local actionItem8 = menuMan.createActionItem stringMacroScriptName stringMacroScriptCategory
        subMenu.addItem actionItem8 -1

        -- create SubMenuItem
        local SubMenuItem = menuMan.createSubMenuItem "AvizStudioTools" subMenu
        exchangeMenu.addItem SubMenuItem -1

        -- separate each app
        local menuSepItem = menuMan.createSeparatorItem()
        exchangeMenu.addItem menuSepItem -1

        -- redraw the menu bar
        menuMan.updateMenuBar()
    )
    else if menuMan.registerMenuContext 0x3947e3a2 then
    (
        -- add AHelper to the menu
        local subMenu = menuMan.findMenu "AvizStudioTools"

        local actionItem7 = menuMan.createActionItem "AHelper" stringMacroScriptCategory
        local addItem = actionItem7 != undefined
        local numItems = subMenu.numItems()
	    for i = 1 to numItems do if (subMenu.getItem i).getTitle() == "AHelper" then addItem = false
        if addItem then subMenu.addItem actionItem7 numItems

        -- redraw the menu bar
        menuMan.updateMenuBar()
    )
)