; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [316 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 96
	i64 30579257353033782, ; 1: Syncfusion.Buttons.XForms => 0x6ca3ac2c05d836 => 18
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 7
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 86
	i64 229321459903363178, ; 4: Syncfusion.Cards.XForms => 0x32eb6a71ce9f86a => 20
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 121
	i64 263803244706540312, ; 6: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 15
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 122
	i64 403694196094993479, ; 8: Xamarin.AndroidX.MediaRouter => 0x59a35bb84210447 => 111
	i64 453419349103509061, ; 9: MQTTnet.dll => 0x64ade7ee59a7e45 => 8
	i64 590536689428908136, ; 10: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 43
	i64 634308326490598313, ; 11: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 105
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 2
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 99
	i64 774222078205450857, ; 14: Syncfusion.SfListView.XForms.Android => 0xabe96e0ccb35a69 => 28
	i64 816102801403336439, ; 15: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 47
	i64 846634227898301275, ; 16: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 40
	i64 872800313462103108, ; 17: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 95
	i64 940822596282819491, ; 18: System.Transactions => 0xd0e792aa81923a3 => 147
	i64 996343623809489702, ; 19: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 135
	i64 1000557547492888992, ; 20: Mono.Security.dll => 0xde2b1c9cba651a0 => 157
	i64 1120440138749646132, ; 21: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 137
	i64 1212813105769650772, ; 22: Syncfusion.DataSource.Portable => 0x10d4c7180c569a54 => 23
	i64 1315114680217950157, ; 23: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 81
	i64 1342439039765371018, ; 24: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 57
	i64 1425944114962822056, ; 25: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1490981186906623721, ; 26: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 73
	i64 1507091876539346714, ; 27: Plugin.SimpleAudioPlayer.Abstractions => 0x14ea4413a9012f1a => 13
	i64 1624659445732251991, ; 28: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 79
	i64 1628611045998245443, ; 29: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 107
	i64 1636321030536304333, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 100
	i64 1731380447121279447, ; 31: Newtonsoft.Json => 0x18071957e9b889d7 => 10
	i64 1743969030606105336, ; 32: System.Memory.dll => 0x1833d297e88f2af8 => 154
	i64 1744702963312407042, ; 33: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 67
	i64 1795316252682057001, ; 34: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 80
	i64 1836611346387731153, ; 35: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 121
	i64 1860886102525309849, ; 36: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 71
	i64 1875917498431009007, ; 37: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 76
	i64 1938067011858688285, ; 38: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 66
	i64 1981742497975770890, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 106
	i64 2064708342624596306, ; 40: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 142
	i64 2076847052340733488, ; 41: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 22
	i64 2126915263223078201, ; 42: Syncfusion.GridCommon.Portable => 0x1d845229bbc49d39 => 24
	i64 2133195048986300728, ; 43: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 10
	i64 2136356949452311481, ; 44: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 112
	i64 2141054624086497428, ; 45: Syncfusion.SfCarousel.XForms.Android => 0x1db68dd639621894 => 26
	i64 2165725771938924357, ; 46: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 84
	i64 2262844636196693701, ; 47: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 95
	i64 2284400282711631002, ; 48: System.Web.Services => 0x1fb3d1f42fd4249a => 152
	i64 2329709569556905518, ; 49: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 103
	i64 2469392061734276978, ; 50: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 21
	i64 2470498323731680442, ; 51: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 90
	i64 2479423007379663237, ; 52: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 127
	i64 2497223385847772520, ; 53: System.Runtime => 0x22a7eb7046413568 => 34
	i64 2545028026929610735, ; 54: SteelStrickers.Android => 0x2351c181a08d7fef => 0
	i64 2547086958574651984, ; 55: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 75
	i64 2592350477072141967, ; 56: System.Xml.dll => 0x23f9e10627330e8f => 35
	i64 2624866290265602282, ; 57: mscorlib.dll => 0x246d65fbde2db8ea => 9
	i64 2694427813909235223, ; 58: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 117
	i64 2713070138985274548, ; 59: Syncfusion.SfListView.XForms.Android.dll => 0x25a6c2eabcefdcb4 => 28
	i64 2787234703088983483, ; 60: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 123
	i64 2949706848458024531, ; 61: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 63
	i64 2960931600190307745, ; 62: Xamarin.Forms.Core => 0x2917579a49927da1 => 133
	i64 2977248461349026546, ; 63: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 56
	i64 3017704767998173186, ; 64: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 137
	i64 3022227708164871115, ; 65: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 61
	i64 3289520064315143713, ; 66: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 102
	i64 3303437397778967116, ; 67: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 77
	i64 3311221304742556517, ; 68: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 33
	i64 3344514922410554693, ; 69: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 145
	i64 3493805808809882663, ; 70: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 125
	i64 3522470458906976663, ; 71: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 124
	i64 3531994851595924923, ; 72: System.Numerics => 0x31042a9aade235bb => 32
	i64 3571415421602489686, ; 73: System.Runtime.dll => 0x319037675df7e556 => 34
	i64 3710460007389013999, ; 74: Syncfusion.SfCarousel.XForms.dll => 0x337e33b7c5b727ef => 27
	i64 3716579019761409177, ; 75: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 76: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 120
	i64 3730887114094830029, ; 77: Syncfusion.GridCommon.Portable.dll => 0x33c6c6102cb461cd => 24
	i64 3772598417116884899, ; 78: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 96
	i64 3943415582112705276, ; 79: Syncfusion.Buttons.XForms.dll => 0x36b9d3942d916afc => 18
	i64 3966267475168208030, ; 80: System.Memory => 0x370b03412596249e => 154
	i64 4252163538099460320, ; 81: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 74
	i64 4264996749430196783, ; 82: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 65
	i64 4349341163892612332, ; 83: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 55
	i64 4416987920449902723, ; 84: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 46
	i64 4525561845656915374, ; 85: System.ServiceModel.Internals => 0x3ece06856b710dae => 153
	i64 4636684751163556186, ; 86: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 129
	i64 4782108999019072045, ; 87: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 83
	i64 4794310189461587505, ; 88: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 75
	i64 4795410492532947900, ; 89: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 124
	i64 4841234827713643511, ; 90: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 49
	i64 4963205065368577818, ; 91: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 60
	i64 5142919913060024034, ; 92: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 134
	i64 5178572682164047940, ; 93: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 62
	i64 5203618020066742981, ; 94: Xamarin.Essentials => 0x4836f704f0e652c5 => 132
	i64 5205316157927637098, ; 95: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 109
	i64 5288341611614403055, ; 96: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 58
	i64 5348796042099802469, ; 97: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 110
	i64 5376510917114486089, ; 98: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 127
	i64 5408338804355907810, ; 99: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 126
	i64 5439315836349573567, ; 100: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 44
	i64 5451019430259338467, ; 101: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 89
	i64 5507995362134886206, ; 102: System.Core.dll => 0x4c705499688c873e => 30
	i64 5563049671862343767, ; 103: Xamarin.AndroidX.Palette.dll => 0x4d33ec33c7355857 => 116
	i64 5574231584441077149, ; 104: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 78
	i64 5692067934154308417, ; 105: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 131
	i64 5757522595884336624, ; 106: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 87
	i64 5767696078500135884, ; 107: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 45
	i64 5814345312393086621, ; 108: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 117
	i64 5896680224035167651, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 104
	i64 6044705416426755068, ; 110: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 64
	i64 6085203216496545422, ; 111: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 135
	i64 6086316965293125504, ; 112: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6311200438583329442, ; 113: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 60
	i64 6319713645133255417, ; 114: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 105
	i64 6401687960814735282, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 103
	i64 6405879832841858445, ; 116: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 72
	i64 6431494048024938549, ; 117: Syncfusion.SfCarousel.XForms.Android.dll => 0x594141c2db90c835 => 26
	i64 6437453774371681866, ; 118: Xamarin.Android.Support.v7.Palette => 0x59566e19c76bf64a => 70
	i64 6465768060024492319, ; 119: Syncfusion.SfListView.XForms => 0x59bb05cb21d3911f => 29
	i64 6504860066809920875, ; 120: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 84
	i64 6548213210057960872, ; 121: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 93
	i64 6588599331800941662, ; 122: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 66
	i64 6591024623626361694, ; 123: System.Web.Services.dll => 0x5b7805f9751a1b5e => 152
	i64 6659513131007730089, ; 124: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 99
	i64 6876862101832370452, ; 125: System.Xml.Linq => 0x5f6f85a57d108914 => 36
	i64 6878024704864574184, ; 126: Syncfusion.Cards.XForms.dll => 0x5f73a70719d05ae8 => 20
	i64 6894844156784520562, ; 127: System.Numerics.Vectors => 0x5faf683aead1ad72 => 33
	i64 7026608356547306326, ; 128: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 22
	i64 7036436454368433159, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 101
	i64 7103753931438454322, ; 130: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 98
	i64 7164916624638427275, ; 131: Xamarin.Android.Support.v7.MediaRouter.dll => 0x636ee5b570dd408b => 69
	i64 7194160955514091247, ; 132: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 52
	i64 7488575175965059935, ; 133: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 36
	i64 7635363394907363464, ; 134: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 133
	i64 7637365915383206639, ; 135: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 132
	i64 7654504624184590948, ; 136: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7735176074855944702, ; 137: Microsoft.CSharp => 0x6b58dda848e391fe => 156
	i64 7735352534559001595, ; 138: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 141
	i64 7820441508502274321, ; 139: System.Data => 0x6c87ca1e14ff8111 => 146
	i64 7821246742157274664, ; 140: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 46
	i64 7836164640616011524, ; 141: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 79
	i64 7879037620440914030, ; 142: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 67
	i64 8003488281596490781, ; 143: Xamarin.Android.Support.v7.MediaRouter => 0x6f121a30148f741d => 69
	i64 8044118961405839122, ; 144: System.ComponentModel.Composition => 0x6fa2739369944712 => 151
	i64 8083354569033831015, ; 145: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 102
	i64 8101777744205214367, ; 146: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 45
	i64 8103644804370223335, ; 147: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 148
	i64 8167236081217502503, ; 148: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8187640529827139739, ; 149: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 144
	i64 8196541262927413903, ; 150: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 58
	i64 8385935383968044654, ; 151: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 42
	i64 8398329775253868912, ; 152: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 88
	i64 8400357532724379117, ; 153: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 115
	i64 8408425347822646438, ; 154: MQTTnet => 0x74b0ba4dd95bf4a6 => 8
	i64 8513049764906961545, ; 155: SteelStrickers.dll => 0x76246da838808a89 => 16
	i64 8517710342570482946, ; 156: Syncfusion.Buttons.XForms.Android => 0x7634fc6d84959d02 => 17
	i64 8537064613166331693, ; 157: Plugin.SimpleAudioPlayer.dll => 0x7679bf08cc56372d => 14
	i64 8601935802264776013, ; 158: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 126
	i64 8626175481042262068, ; 159: Java.Interop => 0x77b654e585b55834 => 6
	i64 8638972117149407195, ; 160: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 156
	i64 8639588376636138208, ; 161: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 114
	i64 8684531736582871431, ; 162: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 150
	i64 8808820144457481518, ; 163: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 59
	i64 8853378295825400934, ; 164: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 140
	i64 8917102979740339192, ; 165: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 55
	i64 8951477988056063522, ; 166: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 119
	i64 8974768617058262486, ; 167: Xamarin.AndroidX.MediaRouter.dll => 0x7c8cc881c114ddd6 => 111
	i64 9312692141327339315, ; 168: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 131
	i64 9324707631942237306, ; 169: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 80
	i64 9333622604549974151, ; 170: SteelStrickers => 0x8187b04ea3c1e887 => 16
	i64 9475595603812259686, ; 171: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 54
	i64 9584643793929893533, ; 172: System.IO.dll => 0x85037ebfbbd7f69d => 155
	i64 9662334977499516867, ; 173: System.Numerics.dll => 0x8617827802b0cfc3 => 32
	i64 9678050649315576968, ; 174: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 90
	i64 9711637524876806384, ; 175: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 110
	i64 9808709177481450983, ; 176: Mono.Android.dll => 0x881f890734e555e7 => 7
	i64 9825649861376906464, ; 177: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 87
	i64 9834056768316610435, ; 178: System.Transactions.dll => 0x8879968718899783 => 147
	i64 9866412715007501892, ; 179: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 39
	i64 9998632235833408227, ; 180: Mono.Security => 0x8ac2470b209ebae3 => 157
	i64 10038780035334861115, ; 181: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10226222362177979215, ; 182: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 142
	i64 10229024438826829339, ; 183: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 93
	i64 10303118382221642606, ; 184: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x8efc0794931e4b6e => 13
	i64 10303855825347935641, ; 185: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 59
	i64 10321854143672141184, ; 186: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 139
	i64 10363495123250631811, ; 187: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 47
	i64 10376576884623852283, ; 188: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 125
	i64 10406448008575299332, ; 189: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 145
	i64 10430153318873392755, ; 190: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 91
	i64 10635644668885628703, ; 191: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 56
	i64 10724029800077618418, ; 192: Plugin.BluetoothClassic.Android => 0x94d36848ea546cf2 => 12
	i64 10847732767863316357, ; 193: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 81
	i64 10850923258212604222, ; 194: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 42
	i64 10878511855281532577, ; 195: Syncfusion.Cards.XForms.Android.dll => 0x96f83ce542ee6ea1 => 19
	i64 11019817191295005410, ; 196: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 78
	i64 11023048688141570732, ; 197: System.Core => 0x98f9bc61168392ac => 30
	i64 11037814507248023548, ; 198: System.Xml => 0x992e31d0412bf7fc => 35
	i64 11162124722117608902, ; 199: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 130
	i64 11244001688503983877, ; 200: Plugin.BluetoothClassic.Abstractions.dll => 0x9c0ab7f6612c1f05 => 11
	i64 11340910727871153756, ; 201: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 92
	i64 11376461258732682436, ; 202: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 48
	i64 11392833485892708388, ; 203: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 118
	i64 11395105072750394936, ; 204: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 68
	i64 11529969570048099689, ; 205: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 130
	i64 11578238080964724296, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 101
	i64 11580057168383206117, ; 207: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 76
	i64 11591352189662810718, ; 208: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 123
	i64 11597940890313164233, ; 209: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 210: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 98
	i64 11724931932191659106, ; 211: Xamarin.AndroidX.Palette => 0xa2b7537891eb1462 => 116
	i64 11834399401546345650, ; 212: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 63
	i64 11865714326292153359, ; 213: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 41
	i64 11866610289935986454, ; 214: Xamarin.Android.Support.v7.Palette.dll => 0xa4aeab2fcba12f16 => 70
	i64 12137774235383566651, ; 215: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 128
	i64 12388767885335911387, ; 216: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 41
	i64 12414299427252656003, ; 217: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 48
	i64 12451044538927396471, ; 218: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 97
	i64 12466513435562512481, ; 219: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 108
	i64 12487638416075308985, ; 220: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 94
	i64 12538491095302438457, ; 221: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 85
	i64 12550732019250633519, ; 222: System.IO.Compression => 0xae2d28465e8e1b2f => 149
	i64 12559163541709922900, ; 223: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 68
	i64 12700543734426720211, ; 224: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 86
	i64 12708238894395270091, ; 225: System.IO => 0xb05cbbf17d3ba3cb => 155
	i64 12828192437253469131, ; 226: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 143
	i64 12952608645614506925, ; 227: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 51
	i64 12963446364377008305, ; 228: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 2
	i64 13191688676803073595, ; 229: Plugin.BluetoothClassic.Android.dll => 0xb7124af58063d63b => 12
	i64 13358059602087096138, ; 230: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 57
	i64 13370592475155966277, ; 231: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13391361154981494717, ; 232: Syncfusion.Buttons.XForms.Android.dll => 0xb9d7ac051da2ffbd => 17
	i64 13401370062847626945, ; 233: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 128
	i64 13404347523447273790, ; 234: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 88
	i64 13454009404024712428, ; 235: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 138
	i64 13465488254036897740, ; 236: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 141
	i64 13491513212026656886, ; 237: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 82
	i64 13572454107664307259, ; 238: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 120
	i64 13622732128915678507, ; 239: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 21
	i64 13647894001087880694, ; 240: System.Data.dll => 0xbd670f48cb071df6 => 146
	i64 13828521679616088467, ; 241: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 140
	i64 13959074834287824816, ; 242: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 97
	i64 13965207970233647769, ; 243: Plugin.BluetoothClassic.Abstractions => 0xc1ce62a8783b0299 => 11
	i64 13967638549803255703, ; 244: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 134
	i64 13970307180132182141, ; 245: Syncfusion.Licensing => 0xc1e0805ccade287d => 25
	i64 14124974489674258913, ; 246: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 85
	i64 14172845254133543601, ; 247: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 112
	i64 14261073672896646636, ; 248: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 118
	i64 14369828458497533121, ; 249: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 72
	i64 14400856865250966808, ; 250: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 50
	i64 14451964210230602902, ; 251: Syncfusion.Cards.XForms.Android => 0xc88fb0e121742c96 => 19
	i64 14486659737292545672, ; 252: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 104
	i64 14538127318538747197, ; 253: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 25
	i64 14644440854989303794, ; 254: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 109
	i64 14661790646341542033, ; 255: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 64
	i64 14693486184709846151, ; 256: Plugin.SimpleAudioPlayer => 0xcbe9bfd5e7bd7487 => 14
	i64 14792063746108907174, ; 257: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 138
	i64 14852515768018889994, ; 258: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 92
	i64 14987728460634540364, ; 259: System.IO.Compression.dll => 0xcfff1ba06622494c => 149
	i64 14988210264188246988, ; 260: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 94
	i64 15150743910298169673, ; 261: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 119
	i64 15188640517174936311, ; 262: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 37
	i64 15246441518555807158, ; 263: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 37
	i64 15279429628684179188, ; 264: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 144
	i64 15326820765897713587, ; 265: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 38
	i64 15370334346939861994, ; 266: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 91
	i64 15418891414777631748, ; 267: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 65
	i64 15457813392950723921, ; 268: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 61
	i64 15568534730848034786, ; 269: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 73
	i64 15582737692548360875, ; 270: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 107
	i64 15609085926864131306, ; 271: System.dll => 0xd89e9cf3334914ea => 31
	i64 15777549416145007739, ; 272: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 122
	i64 15810740023422282496, ; 273: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 136
	i64 16154507427712707110, ; 274: System => 0xe03056ea4e39aa26 => 31
	i64 16242842420508142678, ; 275: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 49
	i64 16423015068819898779, ; 276: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 143
	i64 16565028646146589191, ; 277: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 151
	i64 16621146507174665210, ; 278: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 89
	i64 16677317093839702854, ; 279: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 115
	i64 16740690081460163056, ; 280: Syncfusion.DataSource.Portable.dll => 0xe852e0eee05691f0 => 23
	i64 16767985610513713374, ; 281: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 38
	i64 16822611501064131242, ; 282: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 148
	i64 16833383113903931215, ; 283: mscorlib => 0xe99c30c1484d7f4f => 9
	i64 16902975927920026304, ; 284: SteelStrickers.Android.dll => 0xea936f0cf6a6e2c0 => 0
	i64 16932527889823454152, ; 285: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 51
	i64 17009591894298689098, ; 286: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 44
	i64 17024911836938395553, ; 287: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 77
	i64 17031351772568316411, ; 288: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 113
	i64 17037200463775726619, ; 289: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 100
	i64 17285063141349522879, ; 290: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 15
	i64 17338600258603746468, ; 291: Syncfusion.SfListView.XForms.dll => 0xf09f1512449284a4 => 29
	i64 17342427504449389352, ; 292: Syncfusion.SfCarousel.XForms => 0xf0acadee61ab8328 => 27
	i64 17383232329670771222, ; 293: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 53
	i64 17428701562824544279, ; 294: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 50
	i64 17483646997724851973, ; 295: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 74
	i64 17524135665394030571, ; 296: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 62
	i64 17544493274320527064, ; 297: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 83
	i64 17666959971718154066, ; 298: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 53
	i64 17704177640604968747, ; 299: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 108
	i64 17710060891934109755, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 106
	i64 17760961058993581169, ; 301: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 39
	i64 17841643939744178149, ; 302: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 43
	i64 17882897186074144999, ; 303: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17891337867145587222, ; 304: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 139
	i64 17892495832318972303, ; 305: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 136
	i64 17928294245072900555, ; 306: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 150
	i64 17936749993673010118, ; 307: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 54
	i64 17958105683855786126, ; 308: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 40
	i64 18090425465832348288, ; 309: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 71
	i64 18116111925905154859, ; 310: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 82
	i64 18121036031235206392, ; 311: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 113
	i64 18129453464017766560, ; 312: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 153
	i64 18301997741680159453, ; 313: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 52
	i64 18305135509493619199, ; 314: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 114
	i64 18380184030268848184 ; 315: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 129
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [316 x i32] [
	i32 96, i32 18, i32 7, i32 86, i32 20, i32 121, i32 15, i32 122, ; 0..7
	i32 111, i32 8, i32 43, i32 105, i32 2, i32 99, i32 28, i32 47, ; 8..15
	i32 40, i32 95, i32 147, i32 135, i32 157, i32 137, i32 23, i32 81, ; 16..23
	i32 57, i32 4, i32 73, i32 13, i32 79, i32 107, i32 100, i32 10, ; 24..31
	i32 154, i32 67, i32 80, i32 121, i32 71, i32 76, i32 66, i32 106, ; 32..39
	i32 142, i32 22, i32 24, i32 10, i32 112, i32 26, i32 84, i32 95, ; 40..47
	i32 152, i32 103, i32 21, i32 90, i32 127, i32 34, i32 0, i32 75, ; 48..55
	i32 35, i32 9, i32 117, i32 28, i32 123, i32 63, i32 133, i32 56, ; 56..63
	i32 137, i32 61, i32 102, i32 77, i32 33, i32 145, i32 125, i32 124, ; 64..71
	i32 32, i32 34, i32 27, i32 1, i32 120, i32 24, i32 96, i32 18, ; 72..79
	i32 154, i32 74, i32 65, i32 55, i32 46, i32 153, i32 129, i32 83, ; 80..87
	i32 75, i32 124, i32 49, i32 60, i32 134, i32 62, i32 132, i32 109, ; 88..95
	i32 58, i32 110, i32 127, i32 126, i32 44, i32 89, i32 30, i32 116, ; 96..103
	i32 78, i32 131, i32 87, i32 45, i32 117, i32 104, i32 64, i32 135, ; 104..111
	i32 5, i32 60, i32 105, i32 103, i32 72, i32 26, i32 70, i32 29, ; 112..119
	i32 84, i32 93, i32 66, i32 152, i32 99, i32 36, i32 20, i32 33, ; 120..127
	i32 22, i32 101, i32 98, i32 69, i32 52, i32 36, i32 133, i32 132, ; 128..135
	i32 3, i32 156, i32 141, i32 146, i32 46, i32 79, i32 67, i32 69, ; 136..143
	i32 151, i32 102, i32 45, i32 148, i32 6, i32 144, i32 58, i32 42, ; 144..151
	i32 88, i32 115, i32 8, i32 16, i32 17, i32 14, i32 126, i32 6, ; 152..159
	i32 156, i32 114, i32 150, i32 59, i32 140, i32 55, i32 119, i32 111, ; 160..167
	i32 131, i32 80, i32 16, i32 54, i32 155, i32 32, i32 90, i32 110, ; 168..175
	i32 7, i32 87, i32 147, i32 39, i32 157, i32 3, i32 142, i32 93, ; 176..183
	i32 13, i32 59, i32 139, i32 47, i32 125, i32 145, i32 91, i32 56, ; 184..191
	i32 12, i32 81, i32 42, i32 19, i32 78, i32 30, i32 35, i32 130, ; 192..199
	i32 11, i32 92, i32 48, i32 118, i32 68, i32 130, i32 101, i32 76, ; 200..207
	i32 123, i32 1, i32 98, i32 116, i32 63, i32 41, i32 70, i32 128, ; 208..215
	i32 41, i32 48, i32 97, i32 108, i32 94, i32 85, i32 149, i32 68, ; 216..223
	i32 86, i32 155, i32 143, i32 51, i32 2, i32 12, i32 57, i32 4, ; 224..231
	i32 17, i32 128, i32 88, i32 138, i32 141, i32 82, i32 120, i32 21, ; 232..239
	i32 146, i32 140, i32 97, i32 11, i32 134, i32 25, i32 85, i32 112, ; 240..247
	i32 118, i32 72, i32 50, i32 19, i32 104, i32 25, i32 109, i32 64, ; 248..255
	i32 14, i32 138, i32 92, i32 149, i32 94, i32 119, i32 37, i32 37, ; 256..263
	i32 144, i32 38, i32 91, i32 65, i32 61, i32 73, i32 107, i32 31, ; 264..271
	i32 122, i32 136, i32 31, i32 49, i32 143, i32 151, i32 89, i32 115, ; 272..279
	i32 23, i32 38, i32 148, i32 9, i32 0, i32 51, i32 44, i32 77, ; 280..287
	i32 113, i32 100, i32 15, i32 29, i32 27, i32 53, i32 50, i32 74, ; 288..295
	i32 62, i32 83, i32 53, i32 108, i32 106, i32 39, i32 43, i32 5, ; 296..303
	i32 139, i32 136, i32 150, i32 54, i32 40, i32 71, i32 82, i32 113, ; 304..311
	i32 153, i32 52, i32 114, i32 129 ; 312..315
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
