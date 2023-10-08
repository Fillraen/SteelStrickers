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
@assembly_image_cache_hashes = local_unnamed_addr constant [298 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 88
	i64 30579257353033782, ; 1: Syncfusion.Buttons.XForms => 0x6ca3ac2c05d836 => 14
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 6
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 78
	i64 229321459903363178, ; 4: Syncfusion.Cards.XForms => 0x32eb6a71ce9f86a => 16
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 113
	i64 263803244706540312, ; 6: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 11
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 114
	i64 403694196094993479, ; 8: Xamarin.AndroidX.MediaRouter => 0x59a35bb84210447 => 103
	i64 590536689428908136, ; 9: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 35
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 97
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 91
	i64 816102801403336439, ; 13: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 39
	i64 846634227898301275, ; 14: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 32
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 87
	i64 940822596282819491, ; 16: System.Transactions => 0xd0e792aa81923a3 => 141
	i64 996343623809489702, ; 17: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 127
	i64 1000557547492888992, ; 18: Mono.Security.dll => 0xde2b1c9cba651a0 => 148
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 129
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 73
	i64 1342439039765371018, ; 21: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 49
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1490981186906623721, ; 23: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 65
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 71
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 99
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 92
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 8
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 147
	i64 1744702963312407042, ; 29: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 59
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 72
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 113
	i64 1860886102525309849, ; 32: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 63
	i64 1875917498431009007, ; 33: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 68
	i64 1938067011858688285, ; 34: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 58
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 98
	i64 2064708342624596306, ; 36: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 134
	i64 2076847052340733488, ; 37: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 18
	i64 2133195048986300728, ; 38: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 8
	i64 2136356949452311481, ; 39: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 104
	i64 2141054624086497428, ; 40: Syncfusion.SfCarousel.XForms.Android => 0x1db68dd639621894 => 20
	i64 2165725771938924357, ; 41: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 76
	i64 2262844636196693701, ; 42: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 87
	i64 2284400282711631002, ; 43: System.Web.Services => 0x1fb3d1f42fd4249a => 146
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 95
	i64 2469392061734276978, ; 45: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 17
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 82
	i64 2479423007379663237, ; 47: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 119
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 26
	i64 2545028026929610735, ; 49: SteelStrickers.Android => 0x2351c181a08d7fef => 0
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 67
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 27
	i64 2624866290265602282, ; 52: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2694427813909235223, ; 53: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 109
	i64 2787234703088983483, ; 54: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 115
	i64 2949706848458024531, ; 55: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 55
	i64 2960931600190307745, ; 56: Xamarin.Forms.Core => 0x2917579a49927da1 => 125
	i64 2977248461349026546, ; 57: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 48
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 129
	i64 3022227708164871115, ; 59: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 53
	i64 3289520064315143713, ; 60: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 94
	i64 3303437397778967116, ; 61: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 69
	i64 3311221304742556517, ; 62: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 25
	i64 3344514922410554693, ; 63: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 137
	i64 3493805808809882663, ; 64: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 117
	i64 3522470458906976663, ; 65: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 116
	i64 3531994851595924923, ; 66: System.Numerics => 0x31042a9aade235bb => 24
	i64 3571415421602489686, ; 67: System.Runtime.dll => 0x319037675df7e556 => 26
	i64 3710460007389013999, ; 68: Syncfusion.SfCarousel.XForms.dll => 0x337e33b7c5b727ef => 21
	i64 3716579019761409177, ; 69: netstandard.dll => 0x3393f0ed5c8c5c99 => 139
	i64 3727469159507183293, ; 70: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 112
	i64 3772598417116884899, ; 71: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 88
	i64 3943415582112705276, ; 72: Syncfusion.Buttons.XForms.dll => 0x36b9d3942d916afc => 14
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 147
	i64 4252163538099460320, ; 74: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 66
	i64 4264996749430196783, ; 75: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 57
	i64 4349341163892612332, ; 76: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 47
	i64 4416987920449902723, ; 77: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 38
	i64 4525561845656915374, ; 78: System.ServiceModel.Internals => 0x3ece06856b710dae => 138
	i64 4636684751163556186, ; 79: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 121
	i64 4782108999019072045, ; 80: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 75
	i64 4794310189461587505, ; 81: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 67
	i64 4795410492532947900, ; 82: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 116
	i64 4841234827713643511, ; 83: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 41
	i64 4963205065368577818, ; 84: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 52
	i64 5142919913060024034, ; 85: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 126
	i64 5178572682164047940, ; 86: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 54
	i64 5203618020066742981, ; 87: Xamarin.Essentials => 0x4836f704f0e652c5 => 124
	i64 5205316157927637098, ; 88: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 101
	i64 5288341611614403055, ; 89: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 50
	i64 5348796042099802469, ; 90: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 102
	i64 5376510917114486089, ; 91: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 119
	i64 5408338804355907810, ; 92: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 118
	i64 5439315836349573567, ; 93: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 36
	i64 5451019430259338467, ; 94: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 81
	i64 5507995362134886206, ; 95: System.Core.dll => 0x4c705499688c873e => 22
	i64 5563049671862343767, ; 96: Xamarin.AndroidX.Palette.dll => 0x4d33ec33c7355857 => 108
	i64 5574231584441077149, ; 97: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 70
	i64 5692067934154308417, ; 98: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 123
	i64 5757522595884336624, ; 99: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 79
	i64 5767696078500135884, ; 100: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 37
	i64 5814345312393086621, ; 101: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 109
	i64 5896680224035167651, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 96
	i64 6044705416426755068, ; 103: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 56
	i64 6085203216496545422, ; 104: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 127
	i64 6086316965293125504, ; 105: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6311200438583329442, ; 106: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 52
	i64 6319713645133255417, ; 107: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 97
	i64 6401687960814735282, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 95
	i64 6405879832841858445, ; 109: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 64
	i64 6431494048024938549, ; 110: Syncfusion.SfCarousel.XForms.Android.dll => 0x594141c2db90c835 => 20
	i64 6437453774371681866, ; 111: Xamarin.Android.Support.v7.Palette => 0x59566e19c76bf64a => 62
	i64 6504860066809920875, ; 112: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 76
	i64 6548213210057960872, ; 113: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 85
	i64 6588599331800941662, ; 114: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 58
	i64 6591024623626361694, ; 115: System.Web.Services.dll => 0x5b7805f9751a1b5e => 146
	i64 6659513131007730089, ; 116: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 91
	i64 6876862101832370452, ; 117: System.Xml.Linq => 0x5f6f85a57d108914 => 28
	i64 6878024704864574184, ; 118: Syncfusion.Cards.XForms.dll => 0x5f73a70719d05ae8 => 16
	i64 6894844156784520562, ; 119: System.Numerics.Vectors => 0x5faf683aead1ad72 => 25
	i64 7026608356547306326, ; 120: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 18
	i64 7036436454368433159, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 93
	i64 7103753931438454322, ; 122: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 90
	i64 7164916624638427275, ; 123: Xamarin.Android.Support.v7.MediaRouter.dll => 0x636ee5b570dd408b => 61
	i64 7194160955514091247, ; 124: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 44
	i64 7488575175965059935, ; 125: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 28
	i64 7635363394907363464, ; 126: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 125
	i64 7637365915383206639, ; 127: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 124
	i64 7654504624184590948, ; 128: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735352534559001595, ; 129: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 133
	i64 7820441508502274321, ; 130: System.Data => 0x6c87ca1e14ff8111 => 140
	i64 7821246742157274664, ; 131: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 38
	i64 7836164640616011524, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 71
	i64 7879037620440914030, ; 133: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 59
	i64 8003488281596490781, ; 134: Xamarin.Android.Support.v7.MediaRouter => 0x6f121a30148f741d => 61
	i64 8044118961405839122, ; 135: System.ComponentModel.Composition => 0x6fa2739369944712 => 145
	i64 8083354569033831015, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 94
	i64 8101777744205214367, ; 137: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 37
	i64 8103644804370223335, ; 138: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 142
	i64 8167236081217502503, ; 139: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8187640529827139739, ; 140: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 136
	i64 8196541262927413903, ; 141: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 50
	i64 8385935383968044654, ; 142: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 34
	i64 8398329775253868912, ; 143: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 80
	i64 8400357532724379117, ; 144: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 107
	i64 8513049764906961545, ; 145: SteelStrickers.dll => 0x76246da838808a89 => 12
	i64 8517710342570482946, ; 146: Syncfusion.Buttons.XForms.Android => 0x7634fc6d84959d02 => 13
	i64 8601935802264776013, ; 147: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 118
	i64 8626175481042262068, ; 148: Java.Interop => 0x77b654e585b55834 => 5
	i64 8639588376636138208, ; 149: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 106
	i64 8684531736582871431, ; 150: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 144
	i64 8808820144457481518, ; 151: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 51
	i64 8853378295825400934, ; 152: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 132
	i64 8917102979740339192, ; 153: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 47
	i64 8951477988056063522, ; 154: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 111
	i64 8974768617058262486, ; 155: Xamarin.AndroidX.MediaRouter.dll => 0x7c8cc881c114ddd6 => 103
	i64 9312692141327339315, ; 156: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 123
	i64 9324707631942237306, ; 157: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 72
	i64 9333622604549974151, ; 158: SteelStrickers => 0x8187b04ea3c1e887 => 12
	i64 9475595603812259686, ; 159: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 46
	i64 9662334977499516867, ; 160: System.Numerics.dll => 0x8617827802b0cfc3 => 24
	i64 9678050649315576968, ; 161: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 82
	i64 9711637524876806384, ; 162: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 102
	i64 9808709177481450983, ; 163: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9825649861376906464, ; 164: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 79
	i64 9834056768316610435, ; 165: System.Transactions.dll => 0x8879968718899783 => 141
	i64 9866412715007501892, ; 166: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 31
	i64 9998632235833408227, ; 167: Mono.Security => 0x8ac2470b209ebae3 => 148
	i64 10038780035334861115, ; 168: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10226222362177979215, ; 169: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 134
	i64 10229024438826829339, ; 170: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 85
	i64 10303855825347935641, ; 171: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 51
	i64 10321854143672141184, ; 172: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 131
	i64 10363495123250631811, ; 173: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 39
	i64 10376576884623852283, ; 174: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 117
	i64 10406448008575299332, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 137
	i64 10430153318873392755, ; 176: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 83
	i64 10635644668885628703, ; 177: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 48
	i64 10724029800077618418, ; 178: Plugin.BluetoothClassic.Android => 0x94d36848ea546cf2 => 10
	i64 10847732767863316357, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 73
	i64 10850923258212604222, ; 180: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 34
	i64 10878511855281532577, ; 181: Syncfusion.Cards.XForms.Android.dll => 0x96f83ce542ee6ea1 => 15
	i64 11019817191295005410, ; 182: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 70
	i64 11023048688141570732, ; 183: System.Core => 0x98f9bc61168392ac => 22
	i64 11037814507248023548, ; 184: System.Xml => 0x992e31d0412bf7fc => 27
	i64 11162124722117608902, ; 185: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 122
	i64 11244001688503983877, ; 186: Plugin.BluetoothClassic.Abstractions.dll => 0x9c0ab7f6612c1f05 => 9
	i64 11340910727871153756, ; 187: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 84
	i64 11376461258732682436, ; 188: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 40
	i64 11392833485892708388, ; 189: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 110
	i64 11395105072750394936, ; 190: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 60
	i64 11529969570048099689, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 122
	i64 11578238080964724296, ; 192: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 93
	i64 11580057168383206117, ; 193: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 68
	i64 11591352189662810718, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 115
	i64 11597940890313164233, ; 195: netstandard => 0xa0f429ca8d1805c9 => 139
	i64 11672361001936329215, ; 196: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 90
	i64 11724931932191659106, ; 197: Xamarin.AndroidX.Palette => 0xa2b7537891eb1462 => 108
	i64 11834399401546345650, ; 198: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 55
	i64 11865714326292153359, ; 199: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 33
	i64 11866610289935986454, ; 200: Xamarin.Android.Support.v7.Palette.dll => 0xa4aeab2fcba12f16 => 62
	i64 12137774235383566651, ; 201: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 120
	i64 12388767885335911387, ; 202: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 33
	i64 12414299427252656003, ; 203: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 40
	i64 12451044538927396471, ; 204: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 89
	i64 12466513435562512481, ; 205: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 100
	i64 12487638416075308985, ; 206: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 86
	i64 12538491095302438457, ; 207: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 77
	i64 12550732019250633519, ; 208: System.IO.Compression => 0xae2d28465e8e1b2f => 143
	i64 12559163541709922900, ; 209: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 60
	i64 12700543734426720211, ; 210: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 78
	i64 12828192437253469131, ; 211: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 135
	i64 12952608645614506925, ; 212: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 43
	i64 12963446364377008305, ; 213: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13191688676803073595, ; 214: Plugin.BluetoothClassic.Android.dll => 0xb7124af58063d63b => 10
	i64 13358059602087096138, ; 215: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 49
	i64 13370592475155966277, ; 216: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13391361154981494717, ; 217: Syncfusion.Buttons.XForms.Android.dll => 0xb9d7ac051da2ffbd => 13
	i64 13401370062847626945, ; 218: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 120
	i64 13404347523447273790, ; 219: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 80
	i64 13454009404024712428, ; 220: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 130
	i64 13465488254036897740, ; 221: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 133
	i64 13491513212026656886, ; 222: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 74
	i64 13572454107664307259, ; 223: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 112
	i64 13622732128915678507, ; 224: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 17
	i64 13647894001087880694, ; 225: System.Data.dll => 0xbd670f48cb071df6 => 140
	i64 13828521679616088467, ; 226: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 132
	i64 13959074834287824816, ; 227: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 89
	i64 13965207970233647769, ; 228: Plugin.BluetoothClassic.Abstractions => 0xc1ce62a8783b0299 => 9
	i64 13967638549803255703, ; 229: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 126
	i64 13970307180132182141, ; 230: Syncfusion.Licensing => 0xc1e0805ccade287d => 19
	i64 14124974489674258913, ; 231: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 77
	i64 14172845254133543601, ; 232: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 104
	i64 14261073672896646636, ; 233: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 110
	i64 14369828458497533121, ; 234: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 64
	i64 14400856865250966808, ; 235: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 42
	i64 14451964210230602902, ; 236: Syncfusion.Cards.XForms.Android => 0xc88fb0e121742c96 => 15
	i64 14486659737292545672, ; 237: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 96
	i64 14538127318538747197, ; 238: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 19
	i64 14644440854989303794, ; 239: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 101
	i64 14661790646341542033, ; 240: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 56
	i64 14792063746108907174, ; 241: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 130
	i64 14852515768018889994, ; 242: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 84
	i64 14987728460634540364, ; 243: System.IO.Compression.dll => 0xcfff1ba06622494c => 143
	i64 14988210264188246988, ; 244: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 86
	i64 15150743910298169673, ; 245: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 111
	i64 15188640517174936311, ; 246: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 29
	i64 15246441518555807158, ; 247: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 29
	i64 15279429628684179188, ; 248: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 136
	i64 15326820765897713587, ; 249: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 30
	i64 15370334346939861994, ; 250: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 83
	i64 15418891414777631748, ; 251: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 57
	i64 15457813392950723921, ; 252: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 53
	i64 15568534730848034786, ; 253: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 65
	i64 15582737692548360875, ; 254: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 99
	i64 15609085926864131306, ; 255: System.dll => 0xd89e9cf3334914ea => 23
	i64 15777549416145007739, ; 256: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 114
	i64 15810740023422282496, ; 257: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 128
	i64 16154507427712707110, ; 258: System => 0xe03056ea4e39aa26 => 23
	i64 16242842420508142678, ; 259: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 41
	i64 16423015068819898779, ; 260: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 135
	i64 16565028646146589191, ; 261: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 145
	i64 16621146507174665210, ; 262: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 81
	i64 16677317093839702854, ; 263: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 107
	i64 16767985610513713374, ; 264: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 30
	i64 16822611501064131242, ; 265: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 142
	i64 16833383113903931215, ; 266: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 16902975927920026304, ; 267: SteelStrickers.Android.dll => 0xea936f0cf6a6e2c0 => 0
	i64 16932527889823454152, ; 268: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 43
	i64 17009591894298689098, ; 269: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 36
	i64 17024911836938395553, ; 270: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 69
	i64 17031351772568316411, ; 271: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 105
	i64 17037200463775726619, ; 272: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 92
	i64 17285063141349522879, ; 273: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 11
	i64 17342427504449389352, ; 274: Syncfusion.SfCarousel.XForms => 0xf0acadee61ab8328 => 21
	i64 17383232329670771222, ; 275: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 45
	i64 17428701562824544279, ; 276: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 42
	i64 17483646997724851973, ; 277: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 66
	i64 17524135665394030571, ; 278: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 54
	i64 17544493274320527064, ; 279: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 75
	i64 17666959971718154066, ; 280: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 45
	i64 17704177640604968747, ; 281: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 100
	i64 17710060891934109755, ; 282: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 98
	i64 17760961058993581169, ; 283: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 31
	i64 17841643939744178149, ; 284: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 35
	i64 17882897186074144999, ; 285: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17891337867145587222, ; 286: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 131
	i64 17892495832318972303, ; 287: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 128
	i64 17928294245072900555, ; 288: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 144
	i64 17936749993673010118, ; 289: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 46
	i64 17958105683855786126, ; 290: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 32
	i64 18090425465832348288, ; 291: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 63
	i64 18116111925905154859, ; 292: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 74
	i64 18121036031235206392, ; 293: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 105
	i64 18129453464017766560, ; 294: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 138
	i64 18301997741680159453, ; 295: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 44
	i64 18305135509493619199, ; 296: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 106
	i64 18380184030268848184 ; 297: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 121
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [298 x i32] [
	i32 88, i32 14, i32 6, i32 78, i32 16, i32 113, i32 11, i32 114, ; 0..7
	i32 103, i32 35, i32 97, i32 1, i32 91, i32 39, i32 32, i32 87, ; 8..15
	i32 141, i32 127, i32 148, i32 129, i32 73, i32 49, i32 3, i32 65, ; 16..23
	i32 71, i32 99, i32 92, i32 8, i32 147, i32 59, i32 72, i32 113, ; 24..31
	i32 63, i32 68, i32 58, i32 98, i32 134, i32 18, i32 8, i32 104, ; 32..39
	i32 20, i32 76, i32 87, i32 146, i32 95, i32 17, i32 82, i32 119, ; 40..47
	i32 26, i32 0, i32 67, i32 27, i32 7, i32 109, i32 115, i32 55, ; 48..55
	i32 125, i32 48, i32 129, i32 53, i32 94, i32 69, i32 25, i32 137, ; 56..63
	i32 117, i32 116, i32 24, i32 26, i32 21, i32 139, i32 112, i32 88, ; 64..71
	i32 14, i32 147, i32 66, i32 57, i32 47, i32 38, i32 138, i32 121, ; 72..79
	i32 75, i32 67, i32 116, i32 41, i32 52, i32 126, i32 54, i32 124, ; 80..87
	i32 101, i32 50, i32 102, i32 119, i32 118, i32 36, i32 81, i32 22, ; 88..95
	i32 108, i32 70, i32 123, i32 79, i32 37, i32 109, i32 96, i32 56, ; 96..103
	i32 127, i32 4, i32 52, i32 97, i32 95, i32 64, i32 20, i32 62, ; 104..111
	i32 76, i32 85, i32 58, i32 146, i32 91, i32 28, i32 16, i32 25, ; 112..119
	i32 18, i32 93, i32 90, i32 61, i32 44, i32 28, i32 125, i32 124, ; 120..127
	i32 2, i32 133, i32 140, i32 38, i32 71, i32 59, i32 61, i32 145, ; 128..135
	i32 94, i32 37, i32 142, i32 5, i32 136, i32 50, i32 34, i32 80, ; 136..143
	i32 107, i32 12, i32 13, i32 118, i32 5, i32 106, i32 144, i32 51, ; 144..151
	i32 132, i32 47, i32 111, i32 103, i32 123, i32 72, i32 12, i32 46, ; 152..159
	i32 24, i32 82, i32 102, i32 6, i32 79, i32 141, i32 31, i32 148, ; 160..167
	i32 2, i32 134, i32 85, i32 51, i32 131, i32 39, i32 117, i32 137, ; 168..175
	i32 83, i32 48, i32 10, i32 73, i32 34, i32 15, i32 70, i32 22, ; 176..183
	i32 27, i32 122, i32 9, i32 84, i32 40, i32 110, i32 60, i32 122, ; 184..191
	i32 93, i32 68, i32 115, i32 139, i32 90, i32 108, i32 55, i32 33, ; 192..199
	i32 62, i32 120, i32 33, i32 40, i32 89, i32 100, i32 86, i32 77, ; 200..207
	i32 143, i32 60, i32 78, i32 135, i32 43, i32 1, i32 10, i32 49, ; 208..215
	i32 3, i32 13, i32 120, i32 80, i32 130, i32 133, i32 74, i32 112, ; 216..223
	i32 17, i32 140, i32 132, i32 89, i32 9, i32 126, i32 19, i32 77, ; 224..231
	i32 104, i32 110, i32 64, i32 42, i32 15, i32 96, i32 19, i32 101, ; 232..239
	i32 56, i32 130, i32 84, i32 143, i32 86, i32 111, i32 29, i32 29, ; 240..247
	i32 136, i32 30, i32 83, i32 57, i32 53, i32 65, i32 99, i32 23, ; 248..255
	i32 114, i32 128, i32 23, i32 41, i32 135, i32 145, i32 81, i32 107, ; 256..263
	i32 30, i32 142, i32 7, i32 0, i32 43, i32 36, i32 69, i32 105, ; 264..271
	i32 92, i32 11, i32 21, i32 45, i32 42, i32 66, i32 54, i32 75, ; 272..279
	i32 45, i32 100, i32 98, i32 31, i32 35, i32 4, i32 131, i32 128, ; 280..287
	i32 144, i32 46, i32 32, i32 63, i32 74, i32 105, i32 138, i32 44, ; 288..295
	i32 106, i32 121 ; 296..297
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
