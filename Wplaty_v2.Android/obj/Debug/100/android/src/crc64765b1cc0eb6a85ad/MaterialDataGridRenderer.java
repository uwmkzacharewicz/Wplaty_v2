package crc64765b1cc0eb6a85ad;


public class MaterialDataGridRenderer
	extends crc64765b1cc0eb6a85ad.VisualContainerRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Syncfusion.SfDataGrid.XForms.Droid.MaterialDataGridRenderer, Syncfusion.SfDataGrid.XForms.Android", MaterialDataGridRenderer.class, __md_methods);
	}


	public MaterialDataGridRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == MaterialDataGridRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.MaterialDataGridRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public MaterialDataGridRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == MaterialDataGridRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.MaterialDataGridRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public MaterialDataGridRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == MaterialDataGridRenderer.class) {
			mono.android.TypeManager.Activate ("Syncfusion.SfDataGrid.XForms.Droid.MaterialDataGridRenderer, Syncfusion.SfDataGrid.XForms.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

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
