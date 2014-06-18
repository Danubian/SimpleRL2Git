/*
* Copyright (c) 2009 the original author or authors
*
* Permission is hereby granted to use, modify, and distribute this file
* in accordance with the terms of the license agreement accompanying it.
*/

package simple.common.utils
{
	import simple.common.utils.CommandMap;
	import simple.common.interfaces.IInjector;
	import simple.common.interfaces.IReflector;
	import simple.common.interfaces.IModuleCommandMap;
	import simple.common.interfaces.IModuleEventDispatcher;
	
	//import org.robotlegs.base.CommandMap;
	//import org.robotlegs.core.IInjector;
	//import org.robotlegs.core.IReflector;
	//import org.robotlegs.utilities.modular.core.IModuleCommandMap;
	//import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	
	public class ModuleCommandMap extends CommandMap implements IModuleCommandMap
	{
		public function ModuleCommandMap(eventDispatcher:IModuleEventDispatcher, injector:IInjector, reflector:IReflector)
		{
			super(eventDispatcher, injector, reflector);
		}
	}
}