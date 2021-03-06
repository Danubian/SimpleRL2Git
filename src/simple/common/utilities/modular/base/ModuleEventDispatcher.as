/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted to use, modify, and distribute this file
 * in accordance with the terms of the license agreement accompanying it.
 */

package simple.common.utilities.modular.base
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import simple.common.utilities.modular.core.IModuleEventDispatcher;
	
	public class ModuleEventDispatcher extends EventDispatcher implements IModuleEventDispatcher
	{
		public function ModuleEventDispatcher(target:IEventDispatcher = null)
		{
			super(target);
		}
	}
}