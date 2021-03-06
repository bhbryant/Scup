////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2008 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package com.dasflash.soundcloud.scup.view.skins
{

	import mx.core.mx_internal;

	import spark.skins.spark.HighlightBitmapCaptureSkin;

	use namespace mx_internal;

	/**
	 *  Focus skins for Spark components.
	 *
	 * --> Modified to not show a glow around components
	 *
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion Flex 4
	 */
	public class FocusSkin extends HighlightBitmapCaptureSkin
	{

		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------

		// Number to multiply focusThickness by to determine the blur value
		/*		private const BLUR_MULTIPLIER:Number = 2.5;

		   // Number to multiply focusAlpha by to determine the filter alpha value
		   private const ALPHA_MULTIPLIER:Number = 1.5454;

		   //--------------------------------------------------------------------------
		   //
		   //  Class variables
		   //
		   //--------------------------------------------------------------------------

		   private static var colorTransform:ColorTransform = new ColorTransform(
		   1.01, 1.01, 1.01, 2);
		   private static var glowFilter:GlowFilter = new GlowFilter(
		   0x70B2EE, 0.85, 5, 5, 3, 1, false, true);
		   private static var rect:Rectangle = new Rectangle();;
		 private static var filterPt:Point = new Point();*/

		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------

		/**
		 * Constructor.
		 */
		public function FocusSkin()
		{
			super();
		}

		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		override protected function get borderWeight():Number
		{
			if (target)
				return target.getStyle("focusThickness");

			// No target, return default value
			return getStyle("focusThickness");
		}

		//--------------------------------------------------------------------------
		//
		//  Overridden methods
		//
		//--------------------------------------------------------------------------

		/**
		 *  @private
		 */
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);

			if (target)
				blendMode = target.getStyle("focusBlendMode");
		}

	/**
	 *  @private
	 */
	/*override protected function processBitmap() : void
	   {
	   // Apply the glow filter
	   rect.x = rect.y = 0;
	   rect.width = bitmap.width;
	   rect.height = bitmap.height;
	   // If the focusObject has an errorString, use "errorColor" instead of "focusColor"
	   if (target.errorString != null && target.errorString != "")
	   {
	   glowFilter.color = target.getStyle("errorColor");
	   }
	   else
	   {
	   glowFilter.color = target.getStyle("focusColor");
	   }
	   glowFilter.blurX = glowFilter.blurY = borderWeight * BLUR_MULTIPLIER;
	   glowFilter.alpha = target.getStyle("focusAlpha") * ALPHA_MULTIPLIER;

	   bitmap.bitmapData.applyFilter(bitmap.bitmapData, rect, filterPt, glowFilter);
	 }*/
	}
}
