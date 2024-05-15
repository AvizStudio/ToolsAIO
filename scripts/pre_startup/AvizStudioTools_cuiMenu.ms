(
	function AvizStudioToolsMenuCallback =
	(
		local menuMgr = callbacks.notificationParam()
		local mainMenuBar = menuMgr.mainMenuBar
		
		local app_menu_id = "621b1d75-7595-44ec-b65c-e5e07146ad25"
		local app_menu_name = "App Store"

		local app_menu = undefined
		local last_id = undefined
		local script_id = "658724ec-de09-47dd-b723-918c59a28ad1"
		local before_id = "cee8f758-2199-411b-81e7-d3ff4a80d143"
		for i in mainMenuBar.menuItems do 
		(
			local id = i.id
			local menu = menuMgr.GetMenuById id
			if menu.title == app_menu_name then app_menu = menu
			if last_id == script_id then before_id = id
			last_id = id
			--format "title: %(%) ID:%\n" menu.title (menu.title == app_menu_name) id
		)
		
		if app_menu == undefined then
		(
			app_menu = mainMenuBar.CreateSubMenu app_menu_id app_menu_name beforeId:before_id
		)
		
		ast_menu = app_menu.CreateSubMenu "dafa3219-fd85-4fbe-8d94-ac1f4826c6db" "AvizStudioTools"
		ast_menu.CreateAction "0f1f8338-0aa1-44b4-b22c-abba14143d2a" 647394 "ATilesTool`AvizStudioTools"
		ast_menu.CreateAction "88efcbf0-1214-4644-98f0-43d6f31e7fe4" 647394 "ATree3D`AvizStudioTools"
		ast_menu.CreateAction "c7e8fb70-1f15-476d-8032-0c1616b21b3b" 647394 "A2DimageActions`AvizStudioTools"
		ast_menu.CreateAction "a349d03d-0647-4e0b-b5ad-98f04f950229" 647394 "AColorManager`AvizStudioTools"
		ast_menu.CreateAction "9780e634-d52c-4488-8596-e35e93a001ff" 647394 "ASnapshots`AvizStudioTools"
		ast_menu.CreateAction "af22621b-8884-4b40-949f-0a819276fcc5" 647394 "ASmartObjects`AvizStudioTools"
		ast_menu.CreateAction "b25bb7b9-02f8-4b38-893c-cbe1287961f3" 647394 "AHelper`AvizStudioTools"
		ast_menu.CreateAction "6b74b067-ed9b-4aa3-9bc5-7cc6a443ff28" 647394 "AvizStudioTools_Setup`AvizStudioTools"
	)
	callbacks.removeScripts id:#AvizStudioToolsMenu
	callbacks.addScript #cuiRegisterMenus AvizStudioToolsMenuCallback id:#AvizStudioToolsMenu
)