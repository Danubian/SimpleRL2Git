/*
* Copyright (c) 2009 the original author or authors
*
* Permission is hereby granted to use, modify, and distribute this file
* in accordance with the terms of the license agreement accompanying it.
*/

package simple.common.utils
{
	import flash.system.ApplicationDomain;
	
	import org.swiftsuspenders.Injector;
	
	import simple.common.interfaces.IInjector;
	
	/**
	 * SwiftSuspender <code>IInjector</code> adpater - See: <a href="http://github.com/tschneidereit/SwiftSuspenders">SwiftSuspenders</a>
	 *
	 * @author tschneidereit
	 */
	public class SwiftSuspendersInjector extends Injector implements IInjector
	{
		protected static const XML_CONFIG:XML =
			<types>
				<type name='org.robotlegs.mvcs::Actor'>
					<field name='eventDispatcher'/>
				</type>
				<type name='org.robotlegs.mvcs::Command'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
					<field name='injector'/>
					<field name='commandMap'/>
				</type>
				<type name='org.robotlegs.mvcs::Mediator'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
				</type>
			</types>;
		
		private var parent:SwiftSuspendersInjector = null;
		private var applicationDomain:ApplicationDomain;
		
		public function SwiftSuspendersInjector(xmlConfig:XML = null)
		{
			if (xmlConfig)
			{
				for each (var typeNode:XML in XML_CONFIG.children())
				{
					xmlConfig.appendChild(typeNode);
				}
			}
			super(xmlConfig);
		}
		
		/**
		 * @inheritDoc
		 */
		public function createChild(applicationDomain:ApplicationDomain = null):IInjector
		{
			var injector:SwiftSuspendersInjector = new SwiftSuspendersInjector();
			injector.applicationDomain(applicationDomain);
			//injector.setApplicationDomain(applicationDomain);
			injector.parentInjector(this);
			return injector;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get applicationDomain():ApplicationDomain
		{
			return applicationDomain;
		}
		
		/**
		 * @inheritDoc
		 */
		public function set applicationDomain(value:ApplicationDomain):void
		{
			applicationDomain = value;
		}
		
		public function set parentInjector(value:SwiftSuspendersInjector):void
		{
			parent = value;
		}
		
	}
}