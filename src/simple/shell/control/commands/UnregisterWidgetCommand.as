/*
* Copyright (c) 2009 the original author or authors
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

package simple.shell.control.commands
{
	import simple.shell.events.ShellWidgetEvent;
	import simple.shell.model.ActiveWidgetModel;
	import robotlegs.bender.bundles.mvcs.Command;
	
//	import org.robotlegs.demos.acmewidgetfactory.shell.controller.ShellWidgetEvent;
//	import org.robotlegs.demos.acmewidgetfactory.shell.model.ActiveWidgetModel;
//	import org.robotlegs.mvcs.Command;
	
	public class UnregisterWidgetCommand extends Command
	{
		[Inject]
		public var event:ShellWidgetEvent;
		
		[Inject]
		public var activeWidgetModel:ActiveWidgetModel;
		
		override public function execute():void
		{
			trace("Executing the UnregisteredWidgetCommand");
			if (activeWidgetModel.hasWidgetId(event.widgetId))
			{
				activeWidgetModel.removeById(event.widgetId);
			}
		}
	}
}