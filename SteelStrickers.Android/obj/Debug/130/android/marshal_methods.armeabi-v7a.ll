; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [310 x i32] [
	i32 5009434, ; 0: Syncfusion.Cards.XForms.Android => 0x4c701a => 17
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 103
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 136
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 10
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 131
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 71
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 16
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 120
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 120
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 140
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 35
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 84
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 46
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 122
	i32 201930040, ; 14: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 36
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 82
	i32 219130465, ; 16: Xamarin.Android.Support.v4 => 0xd0faa61 => 64
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 98
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 153
	i32 232587938, ; 19: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 109
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 150
	i32 261689757, ; 21: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 87
	i32 278686392, ; 22: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 102
	i32 280482487, ; 23: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 96
	i32 293914992, ; 24: Xamarin.Android.Support.Transition => 0x1184c970 => 63
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 73
	i32 321597661, ; 26: System.Numerics => 0x132b30dd => 30
	i32 331266987, ; 27: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 67
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 100
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 152
	i32 388313361, ; 30: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 42
	i32 389971796, ; 31: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 48
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 86
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 130
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 95
	i32 465846621, ; 35: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 36: System.dll => 0x1bff388e => 29
	i32 476646585, ; 37: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 96
	i32 478296930, ; 38: MQTTnet => 0x1c823b62 => 8
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 107
	i32 514659665, ; 40: Xamarin.Android.Support.Compat => 0x1ead1551 => 46
	i32 524864063, ; 41: Xamarin.Android.Support.Print => 0x1f48ca3f => 60
	i32 526420162, ; 42: System.Transactions.dll => 0x1f6088c2 => 145
	i32 527452488, ; 43: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 140
	i32 532697492, ; 44: Syncfusion.SfListView.XForms => 0x1fc05194 => 27
	i32 539750087, ; 45: Xamarin.Android.Support.Design => 0x202beec7 => 52
	i32 571524804, ; 46: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 69
	i32 605376203, ; 47: System.IO.Compression.FileSystem => 0x24154ecb => 148
	i32 627609679, ; 48: Xamarin.AndroidX.CustomView => 0x2568904f => 91
	i32 663517072, ; 49: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 127
	i32 666292255, ; 50: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 79
	i32 690569205, ; 51: System.Xml.Linq.dll => 0x29293ff5 => 34
	i32 691348768, ; 52: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 142
	i32 692692150, ; 53: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 43
	i32 695102255, ; 54: Syncfusion.SfListView.XForms.dll => 0x296e6b2f => 27
	i32 700284507, ; 55: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 137
	i32 707987836, ; 56: Syncfusion.Cards.XForms.dll => 0x2a33097c => 18
	i32 719061231, ; 57: Syncfusion.Core.XForms.dll => 0x2adc00ef => 20
	i32 720511267, ; 58: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 141
	i32 775507847, ; 59: System.IO.Compression => 0x2e394f87 => 147
	i32 801787702, ; 60: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 56
	i32 809851609, ; 61: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 62: Xamarin.AndroidX.Print => 0x3246f6cd => 116
	i32 882883187, ; 63: Xamarin.Android.Support.v4.dll => 0x349fba73 => 64
	i32 902159924, ; 64: Rg.Plugins.Popup => 0x35c5de34 => 13
	i32 907231247, ; 65: Plugin.BluetoothClassic.Android => 0x3613400f => 12
	i32 916714535, ; 66: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 60
	i32 928116545, ; 67: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 136
	i32 955402788, ; 68: Newtonsoft.Json => 0x38f24a24 => 10
	i32 956575887, ; 69: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 141
	i32 958213972, ; 70: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 59
	i32 967690846, ; 71: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 100
	i32 974778368, ; 72: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 987342438, ; 73: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 39
	i32 993064525, ; 74: Syncfusion.SfCarousel.XForms.Android => 0x3b30f64d => 24
	i32 1012816738, ; 75: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 119
	i32 1035644815, ; 76: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 78
	i32 1042160112, ; 77: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 133
	i32 1052210849, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 104
	i32 1084122840, ; 79: Xamarin.Kotlin.StdLib => 0x409e66d8 => 139
	i32 1086034974, ; 80: Syncfusion.DataSource.Portable.dll => 0x40bb941e => 21
	i32 1098167829, ; 81: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 41
	i32 1098259244, ; 82: System => 0x41761b2c => 29
	i32 1175144683, ; 83: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 125
	i32 1178241025, ; 84: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 112
	i32 1204270330, ; 85: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 79
	i32 1264511973, ; 86: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 121
	i32 1267360935, ; 87: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 126
	i32 1275534314, ; 88: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 142
	i32 1278448581, ; 89: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 76
	i32 1292763917, ; 90: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 50
	i32 1293217323, ; 91: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 93
	i32 1297413738, ; 92: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 38
	i32 1359785034, ; 93: Xamarin.Android.Support.Design.dll => 0x510cac4a => 52
	i32 1365406463, ; 94: System.ServiceModel.Internals.dll => 0x516272ff => 151
	i32 1376866003, ; 95: Xamarin.AndroidX.SavedState => 0x52114ed3 => 119
	i32 1395857551, ; 96: Xamarin.AndroidX.Media.dll => 0x5333188f => 108
	i32 1406073936, ; 97: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 88
	i32 1445445088, ; 98: Xamarin.Android.Support.Fragment => 0x5627bde0 => 55
	i32 1460219004, ; 99: Xamarin.Forms.Xaml => 0x57092c7c => 134
	i32 1462112819, ; 100: System.IO.Compression.dll => 0x57261233 => 147
	i32 1469204771, ; 101: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 77
	i32 1486716862, ; 102: Syncfusion.Cards.XForms => 0x589d7fbe => 18
	i32 1496693446, ; 103: Syncfusion.SfListView.XForms.Android => 0x5935bac6 => 26
	i32 1516315406, ; 104: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 19
	i32 1574652163, ; 105: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 49
	i32 1582372066, ; 106: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 92
	i32 1587447679, ; 107: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 35
	i32 1592978981, ; 108: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 109: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 106
	i32 1624863272, ; 110: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 129
	i32 1636350590, ; 111: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 90
	i32 1639515021, ; 112: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 113: System.Runtime => 0x62c6282e => 32
	i32 1658241508, ; 114: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 123
	i32 1658251792, ; 115: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 135
	i32 1662014763, ; 116: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 70
	i32 1670060433, ; 117: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 87
	i32 1698840827, ; 118: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 138
	i32 1729485958, ; 119: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 83
	i32 1766324549, ; 120: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 122
	i32 1776026572, ; 121: System.Core.dll => 0x69dc03cc => 28
	i32 1788241197, ; 122: Xamarin.AndroidX.Fragment => 0x6a96652d => 95
	i32 1808609942, ; 123: Xamarin.AndroidX.Loader => 0x6bcd3296 => 106
	i32 1813058853, ; 124: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 139
	i32 1813201214, ; 125: Xamarin.Google.Android.Material => 0x6c13413e => 135
	i32 1818569960, ; 126: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 113
	i32 1866717392, ; 127: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 56
	i32 1867746548, ; 128: Xamarin.Essentials.dll => 0x6f538cf4 => 130
	i32 1877418711, ; 129: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 69
	i32 1878053835, ; 130: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 134
	i32 1885316902, ; 131: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 80
	i32 1916660109, ; 132: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 41
	i32 1919157823, ; 133: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 110
	i32 1969191170, ; 134: Syncfusion.SfCarousel.XForms.dll => 0x755f7902 => 25
	i32 1983156543, ; 135: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 138
	i32 2019465201, ; 136: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 104
	i32 2037417872, ; 137: Xamarin.Android.Support.ViewPager => 0x79708790 => 72
	i32 2044222327, ; 138: Xamarin.Android.Support.Loader => 0x79d85b77 => 57
	i32 2055257422, ; 139: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 101
	i32 2071563619, ; 140: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 15
	i32 2079903147, ; 141: System.Runtime.dll => 0x7bf8cdab => 32
	i32 2090596640, ; 142: System.Numerics.Vectors => 0x7c9bf920 => 31
	i32 2097448633, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 97
	i32 2126786730, ; 144: Xamarin.Forms.Platform.Android => 0x7ec430aa => 132
	i32 2139458754, ; 145: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 54
	i32 2166116741, ; 146: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 49
	i32 2196165013, ; 147: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 71
	i32 2201107256, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 143
	i32 2201231467, ; 149: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 150: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 125
	i32 2234081415, ; 151: SteelStrickers.dll => 0x85296087 => 14
	i32 2244775296, ; 152: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 107
	i32 2256548716, ; 153: Xamarin.AndroidX.MultiDex => 0x8680336c => 110
	i32 2261435625, ; 154: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 99
	i32 2269504559, ; 155: SteelStrickers.Android.dll => 0x8745e42f => 0
	i32 2279755925, ; 156: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 118
	i32 2315684594, ; 157: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 74
	i32 2330457430, ; 158: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 48
	i32 2330986192, ; 159: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 61
	i32 2343171156, ; 160: Syncfusion.Core.XForms => 0x8ba9f454 => 20
	i32 2354730003, ; 161: Syncfusion.Licensing => 0x8c5a5413 => 23
	i32 2373288475, ; 162: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 55
	i32 2409053734, ; 163: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 115
	i32 2440966767, ; 164: Xamarin.Android.Support.Loader.dll => 0x917e326f => 57
	i32 2465532216, ; 165: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 86
	i32 2471841756, ; 166: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 167: Java.Interop.dll => 0x93918882 => 6
	i32 2487632829, ; 168: Xamarin.Android.Support.DocumentFile => 0x944643bd => 53
	i32 2501346920, ; 169: System.Data.DataSetExtensions => 0x95178668 => 146
	i32 2505896520, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 103
	i32 2508407795, ; 171: Syncfusion.SfCarousel.XForms.Android.dll => 0x958343f3 => 24
	i32 2515096885, ; 172: Syncfusion.DataSource.Portable => 0x95e95535 => 21
	i32 2562349572, ; 173: Microsoft.CSharp => 0x98ba5a04 => 153
	i32 2581819634, ; 174: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 126
	i32 2605712449, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 143
	i32 2620871830, ; 176: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 90
	i32 2624644809, ; 177: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 94
	i32 2633051222, ; 178: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 102
	i32 2635300604, ; 179: Syncfusion.Buttons.XForms => 0x9d137efc => 16
	i32 2691162529, ; 180: SteelStrickers.Android => 0xa067e1a1 => 0
	i32 2698266930, ; 181: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 39
	i32 2701096212, ; 182: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 123
	i32 2732434636, ; 183: Plugin.BluetoothClassic.Abstractions.dll => 0xa2dda4cc => 11
	i32 2732626843, ; 184: Xamarin.AndroidX.Activity => 0xa2e0939b => 73
	i32 2737747696, ; 185: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 77
	i32 2751899777, ; 186: Xamarin.Android.Support.Collections => 0xa406a881 => 45
	i32 2754271178, ; 187: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 68
	i32 2766581644, ; 188: Xamarin.Forms.Core => 0xa4e6af8c => 131
	i32 2770495804, ; 189: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 137
	i32 2772484381, ; 190: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 114
	i32 2778768386, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 128
	i32 2788639665, ; 192: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 58
	i32 2788775637, ; 193: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 62
	i32 2810250172, ; 194: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 88
	i32 2819470561, ; 195: System.Xml.dll => 0xa80db4e1 => 33
	i32 2853208004, ; 196: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 128
	i32 2855708567, ; 197: Xamarin.AndroidX.Transition => 0xaa36a797 => 124
	i32 2861816565, ; 198: Rg.Plugins.Popup.dll => 0xaa93daf5 => 13
	i32 2868557005, ; 199: Syncfusion.Licensing.dll => 0xaafab4cd => 23
	i32 2874148507, ; 200: Syncfusion.Core.XForms.Android => 0xab50069b => 19
	i32 2876493027, ; 201: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 62
	i32 2878950252, ; 202: Plugin.BluetoothClassic.Abstractions => 0xab994b6c => 11
	i32 2893257763, ; 203: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 36
	i32 2903344695, ; 204: System.ComponentModel.Composition => 0xad0d8637 => 149
	i32 2905242038, ; 205: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 206: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 129
	i32 2919462931, ; 207: System.Numerics.Vectors.dll => 0xae037813 => 31
	i32 2921128767, ; 208: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 75
	i32 2921692953, ; 209: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 51
	i32 2922925221, ; 210: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 70
	i32 2978675010, ; 211: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 93
	i32 2997658596, ; 212: MQTTnet.dll => 0xb2aca3e4 => 8
	i32 3016983068, ; 213: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 121
	i32 3024354802, ; 214: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 98
	i32 3044182254, ; 215: FormsViewGroup => 0xb57288ee => 5
	i32 3056250942, ; 216: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 44
	i32 3057625584, ; 217: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 111
	i32 3068715062, ; 218: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 37
	i32 3092211740, ; 219: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 59
	i32 3111772706, ; 220: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3194035187, ; 221: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 67
	i32 3204380047, ; 222: System.Data.dll => 0xbefef58f => 144
	i32 3204912593, ; 223: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 44
	i32 3211777861, ; 224: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 92
	i32 3233339011, ; 225: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 38
	i32 3247949154, ; 226: Mono.Security => 0xc197c562 => 154
	i32 3258312781, ; 227: Xamarin.AndroidX.CardView => 0xc235e84d => 83
	i32 3267021929, ; 228: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 81
	i32 3296380511, ; 229: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 45
	i32 3317135071, ; 230: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 91
	i32 3317144872, ; 231: System.Data => 0xc5b79d28 => 144
	i32 3321585405, ; 232: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 53
	i32 3340431453, ; 233: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 80
	i32 3345895724, ; 234: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 117
	i32 3346324047, ; 235: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 112
	i32 3352662376, ; 236: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 47
	i32 3353484488, ; 237: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 97
	i32 3357663996, ; 238: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 50
	i32 3362522851, ; 239: Xamarin.AndroidX.Core => 0xc86c06e3 => 89
	i32 3366347497, ; 240: Java.Interop => 0xc8a662e9 => 6
	i32 3369739654, ; 241: Xamarin.AndroidX.Palette => 0xc8da2586 => 114
	i32 3374999561, ; 242: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 118
	i32 3375054972, ; 243: Plugin.BluetoothClassic.Android.dll => 0xc92b407c => 12
	i32 3404865022, ; 244: System.ServiceModel.Internals => 0xcaf21dfe => 151
	i32 3429136800, ; 245: System.Xml => 0xcc6479a0 => 33
	i32 3430777524, ; 246: netstandard => 0xcc7d82b4 => 1
	i32 3434749838, ; 247: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 15
	i32 3439690031, ; 248: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 43
	i32 3441283291, ; 249: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 94
	i32 3448958507, ; 250: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 22
	i32 3476120550, ; 251: Mono.Android => 0xcf3163e6 => 7
	i32 3486566296, ; 252: System.Transactions => 0xcfd0c798 => 145
	i32 3493954962, ; 253: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 85
	i32 3498942916, ; 254: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 66
	i32 3501239056, ; 255: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 81
	i32 3509114376, ; 256: System.Xml.Linq => 0xd128d608 => 34
	i32 3536029504, ; 257: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 132
	i32 3547625832, ; 258: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 61
	i32 3567349600, ; 259: System.ComponentModel.Composition.dll => 0xd4a16f60 => 149
	i32 3618140916, ; 260: Xamarin.AndroidX.Preference => 0xd7a872f4 => 115
	i32 3627220390, ; 261: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 116
	i32 3629053394, ; 262: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 109
	i32 3632359727, ; 263: Xamarin.Forms.Platform => 0xd881692f => 133
	i32 3633644679, ; 264: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 75
	i32 3641597786, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 101
	i32 3664423555, ; 266: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 72
	i32 3672376724, ; 267: SteelStrickers => 0xdae40594 => 14
	i32 3672681054, ; 268: Mono.Android.dll => 0xdae8aa5e => 7
	i32 3676310014, ; 269: System.Web.Services.dll => 0xdb2009fe => 150
	i32 3678221644, ; 270: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 65
	i32 3681174138, ; 271: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 37
	i32 3682565725, ; 272: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 82
	i32 3684561358, ; 273: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 85
	i32 3689375977, ; 274: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3714038699, ; 275: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 58
	i32 3718463572, ; 276: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 42
	i32 3718780102, ; 277: Xamarin.AndroidX.Annotation => 0xdda814c6 => 74
	i32 3724971120, ; 278: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 111
	i32 3758932259, ; 279: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 99
	i32 3759042612, ; 280: Syncfusion.SfCarousel.XForms => 0xe00e7034 => 25
	i32 3776062606, ; 281: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 54
	i32 3786282454, ; 282: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 84
	i32 3789524022, ; 283: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 68
	i32 3822602673, ; 284: Xamarin.AndroidX.Media => 0xe3d849b1 => 108
	i32 3829621856, ; 285: System.Numerics.dll => 0xe4436460 => 30
	i32 3832731800, ; 286: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 47
	i32 3837938240, ; 287: Syncfusion.SfListView.XForms.Android.dll => 0xe4c24a40 => 26
	i32 3862817207, ; 288: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 40
	i32 3874897629, ; 289: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 40
	i32 3883175360, ; 290: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 65
	i32 3885922214, ; 291: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 124
	i32 3888767677, ; 292: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 117
	i32 3896760992, ; 293: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 89
	i32 3920810846, ; 294: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 148
	i32 3921031405, ; 295: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 127
	i32 3929079551, ; 296: Syncfusion.Cards.XForms.Android.dll => 0xea30feff => 17
	i32 3931092270, ; 297: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 113
	i32 3945713374, ; 298: System.Data.DataSetExtensions.dll => 0xeb2ecede => 146
	i32 3955647286, ; 299: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 78
	i32 4015948917, ; 300: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 76
	i32 4025784931, ; 301: System.Memory => 0xeff49a63 => 152
	i32 4051712506, ; 302: Syncfusion.GridCommon.Portable => 0xf18039fa => 22
	i32 4063435586, ; 303: Xamarin.Android.Support.CustomView => 0xf2331b42 => 51
	i32 4105002889, ; 304: Mono.Security.dll => 0xf4ad5f89 => 154
	i32 4151237749, ; 305: System.Core => 0xf76edc75 => 28
	i32 4182413190, ; 306: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 105
	i32 4216993138, ; 307: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 63
	i32 4219003402, ; 308: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 66
	i32 4292120959 ; 309: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 105
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [310 x i32] [
	i32 17, i32 103, i32 136, i32 10, i32 131, i32 71, i32 16, i32 120, ; 0..7
	i32 120, i32 140, i32 35, i32 84, i32 46, i32 122, i32 36, i32 82, ; 8..15
	i32 64, i32 98, i32 153, i32 109, i32 150, i32 87, i32 102, i32 96, ; 16..23
	i32 63, i32 73, i32 30, i32 67, i32 100, i32 152, i32 42, i32 48, ; 24..31
	i32 86, i32 130, i32 95, i32 9, i32 29, i32 96, i32 8, i32 107, ; 32..39
	i32 46, i32 60, i32 145, i32 140, i32 27, i32 52, i32 69, i32 148, ; 40..47
	i32 91, i32 127, i32 79, i32 34, i32 142, i32 43, i32 27, i32 137, ; 48..55
	i32 18, i32 20, i32 141, i32 147, i32 56, i32 2, i32 116, i32 64, ; 56..63
	i32 13, i32 12, i32 60, i32 136, i32 10, i32 141, i32 59, i32 100, ; 64..71
	i32 5, i32 39, i32 24, i32 119, i32 78, i32 133, i32 104, i32 139, ; 72..79
	i32 21, i32 41, i32 29, i32 125, i32 112, i32 79, i32 121, i32 126, ; 80..87
	i32 142, i32 76, i32 50, i32 93, i32 38, i32 52, i32 151, i32 119, ; 88..95
	i32 108, i32 88, i32 55, i32 134, i32 147, i32 77, i32 18, i32 26, ; 96..103
	i32 19, i32 49, i32 92, i32 35, i32 4, i32 106, i32 129, i32 90, ; 104..111
	i32 3, i32 32, i32 123, i32 135, i32 70, i32 87, i32 138, i32 83, ; 112..119
	i32 122, i32 28, i32 95, i32 106, i32 139, i32 135, i32 113, i32 56, ; 120..127
	i32 130, i32 69, i32 134, i32 80, i32 41, i32 110, i32 25, i32 138, ; 128..135
	i32 104, i32 72, i32 57, i32 101, i32 15, i32 32, i32 31, i32 97, ; 136..143
	i32 132, i32 54, i32 49, i32 71, i32 143, i32 3, i32 125, i32 14, ; 144..151
	i32 107, i32 110, i32 99, i32 0, i32 118, i32 74, i32 48, i32 61, ; 152..159
	i32 20, i32 23, i32 55, i32 115, i32 57, i32 86, i32 1, i32 6, ; 160..167
	i32 53, i32 146, i32 103, i32 24, i32 21, i32 153, i32 126, i32 143, ; 168..175
	i32 90, i32 94, i32 102, i32 16, i32 0, i32 39, i32 123, i32 11, ; 176..183
	i32 73, i32 77, i32 45, i32 68, i32 131, i32 137, i32 114, i32 128, ; 184..191
	i32 58, i32 62, i32 88, i32 33, i32 128, i32 124, i32 13, i32 23, ; 192..199
	i32 19, i32 62, i32 11, i32 36, i32 149, i32 9, i32 129, i32 31, ; 200..207
	i32 75, i32 51, i32 70, i32 93, i32 8, i32 121, i32 98, i32 5, ; 208..215
	i32 44, i32 111, i32 37, i32 59, i32 4, i32 67, i32 144, i32 44, ; 216..223
	i32 92, i32 38, i32 154, i32 83, i32 81, i32 45, i32 91, i32 144, ; 224..231
	i32 53, i32 80, i32 117, i32 112, i32 47, i32 97, i32 50, i32 89, ; 232..239
	i32 6, i32 114, i32 118, i32 12, i32 151, i32 33, i32 1, i32 15, ; 240..247
	i32 43, i32 94, i32 22, i32 7, i32 145, i32 85, i32 66, i32 81, ; 248..255
	i32 34, i32 132, i32 61, i32 149, i32 115, i32 116, i32 109, i32 133, ; 256..263
	i32 75, i32 101, i32 72, i32 14, i32 7, i32 150, i32 65, i32 37, ; 264..271
	i32 82, i32 85, i32 2, i32 58, i32 42, i32 74, i32 111, i32 99, ; 272..279
	i32 25, i32 54, i32 84, i32 68, i32 108, i32 30, i32 47, i32 26, ; 280..287
	i32 40, i32 40, i32 65, i32 124, i32 117, i32 89, i32 148, i32 127, ; 288..295
	i32 17, i32 113, i32 146, i32 78, i32 76, i32 152, i32 22, i32 51, ; 296..303
	i32 154, i32 28, i32 105, i32 63, i32 66, i32 105 ; 304..309
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
