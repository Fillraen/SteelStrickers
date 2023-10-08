package crc6416a97d9014d99432;


public class BluetoothDiscoveryService_DiscoveryReceiver
	extends android.content.BroadcastReceiver
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onReceive:(Landroid/content/Context;Landroid/content/Intent;)V:GetOnReceive_Landroid_content_Context_Landroid_content_Intent_Handler\n" +
			"";
		mono.android.Runtime.register ("SteelStrickers.Droid.Services.BluetoothDiscoveryService+DiscoveryReceiver, SteelStrickers.Android", BluetoothDiscoveryService_DiscoveryReceiver.class, __md_methods);
	}


	public BluetoothDiscoveryService_DiscoveryReceiver ()
	{
		super ();
		if (getClass () == BluetoothDiscoveryService_DiscoveryReceiver.class) {
			mono.android.TypeManager.Activate ("SteelStrickers.Droid.Services.BluetoothDiscoveryService+DiscoveryReceiver, SteelStrickers.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onReceive (android.content.Context p0, android.content.Intent p1)
	{
		n_onReceive (p0, p1);
	}

	private native void n_onReceive (android.content.Context p0, android.content.Intent p1);

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
