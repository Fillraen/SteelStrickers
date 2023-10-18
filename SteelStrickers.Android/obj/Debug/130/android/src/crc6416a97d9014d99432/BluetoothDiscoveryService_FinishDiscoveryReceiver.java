package crc6416a97d9014d99432;


public class BluetoothDiscoveryService_FinishDiscoveryReceiver
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
		mono.android.Runtime.register ("SteelStrickers.Droid.Services.BluetoothDiscoveryService+FinishDiscoveryReceiver, SteelStrickers.Android", BluetoothDiscoveryService_FinishDiscoveryReceiver.class, __md_methods);
	}


	public BluetoothDiscoveryService_FinishDiscoveryReceiver ()
	{
		super ();
		if (getClass () == BluetoothDiscoveryService_FinishDiscoveryReceiver.class) {
			mono.android.TypeManager.Activate ("SteelStrickers.Droid.Services.BluetoothDiscoveryService+FinishDiscoveryReceiver, SteelStrickers.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public BluetoothDiscoveryService_FinishDiscoveryReceiver (android.content.Context p0, android.content.BroadcastReceiver p1, android.bluetooth.BluetoothAdapter p2, boolean p3)
	{
		super ();
		if (getClass () == BluetoothDiscoveryService_FinishDiscoveryReceiver.class) {
			mono.android.TypeManager.Activate ("SteelStrickers.Droid.Services.BluetoothDiscoveryService+FinishDiscoveryReceiver, SteelStrickers.Android", "Android.Content.Context, Mono.Android:Android.Content.BroadcastReceiver, Mono.Android:Android.Bluetooth.BluetoothAdapter, Mono.Android:System.Boolean&, mscorlib", this, new java.lang.Object[] { p0, p1, p2, p3 });
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
