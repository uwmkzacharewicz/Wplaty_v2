package crc64765b1cc0eb6a85ad;


public class GridCellRenderer
	extends crc64765b1cc0eb6a85ad.GridCellBaseRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getVisibility:()I:GetGetVisibilityHandler\n" +
			"n_setVisibility:(I)V:GetSetVisibility_IHandler\n" +
			"n_onTouchEvent:(Landroid/view/MotionEvent;)Z:GetOnTouchEvent_Landroid_view_MotionEvent_Handler\n" +
			"n_performClick:()Z:GetPerformClickHandler\n" +
			"n_onRequestSendAccessibilityEvent:(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z:GetOnRequestSendAccessibilityEvent_Landroid_view_View_Landroid_view_accessibility_AccessibilityEvent_Handler\n" +
			"n_onKeyUp:(ILandroid/view/KeyEvent;)Z:GetOnKeyUp_ILandroid_view_KeyEvent_Handler\n" +
			"n_onDraw:(Landroid/graphics/Canvas;)V:GetOnDraw_Landroid_graphics_Canvas_Handler\n" +
			"";
		mono.android.Runtime.register ("Syncfusion.SfDataGrid.XForms.Droid.GridCellRenderer, Syncfusion.SfDataGrid.XForms.Android", GridCellRenderer.class, __md_methods);
	}


	public GridCellRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == GridCellRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.GridCellRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public GridCellRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == GridCellRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.GridCellRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public GridCellRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == GridCellRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.GridCellRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public int getVisibility ()
	{
		return n_getVisibility ();
	}

	private native int n_getVisibility ();


	public void setVisibility (int p0)
	{
		n_setVisibility (p0);
	}

	private native void n_setVisibility (int p0);


	public boolean onTouchEvent (android.view.MotionEvent p0)
	{
		return n_onTouchEvent (p0);
	}

	private native boolean n_onTouchEvent (android.view.MotionEvent p0);


	public boolean performClick ()
	{
		return n_performClick ();
	}

	private native boolean n_performClick ();


	public boolean onRequestSendAccessibilityEvent (android.view.View p0, android.view.accessibility.AccessibilityEvent p1)
	{
		return n_onRequestSendAccessibilityEvent (p0, p1);
	}

	private native boolean n_onRequestSendAccessibilityEvent (android.view.View p0, android.view.accessibility.AccessibilityEvent p1);


	public boolean onKeyUp (int p0, android.view.KeyEvent p1)
	{
		return n_onKeyUp (p0, p1);
	}

	private native boolean n_onKeyUp (int p0, android.view.KeyEvent p1);


	public void onDraw (android.graphics.Canvas p0)
	{
		n_onDraw (p0);
	}

	private native void n_onDraw (android.graphics.Canvas p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
