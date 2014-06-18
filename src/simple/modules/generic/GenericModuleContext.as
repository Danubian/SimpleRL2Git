/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */

package simple.modules.generic
{
	//import org.robotlegs.utilities.modular.mvcs.ModuleContext;
	import simple.common.utils.Context;
	
	public class GenericModuleContext extends Context
	{
		
		override public function startup():void
		{
			mediatorMap.mapView(GenericModule, GenericModuleMediator);
		}
	
	}
}