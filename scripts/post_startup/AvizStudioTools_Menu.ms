-- setup Exchange Store menu, and add our app to it.
(
    local stringExhangeStoreDefaultMenu = "App Store"

    -- so this should ensure it is only one time only per user UI setup
    -- MUST keep the value the SAME for all apps
    if menuMan.registerMenuContext 0x2adadafb then
    (
        -- probably can take these out, but it shows that it is called only when needed...
        print "LED: Creating Exchange Store Menu"

        -- Get the main menu bar
        local mainMenuBar = menuMan.getMainMenuBar()

        -- Create the menu
        local subMenu = menuMan.createMenu stringExhangeStoreDefaultMenu
        local menuPos = mainMenuBar.numItems()
        local submenuItem = menuMan.createSubMenuItem "test" subMenu

        mainMenuBar.addItem submenuItem menuPos
        -- redraw the menu bar with the new item
        menuMan.updateMenuBar()
    )

    -- This one will allow an app to add theirs to existing exchange store app.
    -- MUST use genclassid() to get this value and it should be DIFFERENT per app.
    -- This then allows only onetime setup per app, per user UI setup

    local stringMacroScriptName = "AvizStudioTools_Setup" 
    local stringMacroScriptCategory = "AvizStudioTools"
    if menuMan.registerMenuContext 0x3947e3a1 then
    (
        -- probably can take these out, but it shows that it is called only when needed...
        print "Creating AvizStudioTools App Sub-Menu"

        -- this should always succeed because above
        local exchangeMenu = menuMan.findMenu stringExhangeStoreDefaultMenu

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

        local actionItem7 = menuMan.createActionItem stringMacroScriptName stringMacroScriptCategory
        subMenu.addItem actionItem7 -1

        -- create SubMenuItem
        local SubMenuItem = menuMan.createSubMenuItem "AvizStudioTools" subMenu
        exchangeMenu.addItem SubMenuItem -1

        -- Let's also seperate each app...
        local menuSepItem = menuMan.createSeparatorItem()
        exchangeMenu.addItem menuSepItem -1

        -- redraw the menu bar with the new item
        menuMan.updateMenuBar()
    )
)