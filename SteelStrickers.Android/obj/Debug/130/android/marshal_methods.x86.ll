; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [308 x i32] [
	i32 5009434, ; 0: Syncfusion.Cards.XForms.Android => 0x4c701a => 15
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 101
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 134
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 129
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 69
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 14
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 118
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 118
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 138
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 33
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 82
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 44
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 120
	i32 201930040, ; 14: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 34
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 80
	i32 219130465, ; 16: Xamarin.Android.Support.v4 => 0xd0faa61 => 62
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 96
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 152
	i32 232587938, ; 19: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 107
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 150
	i32 261689757, ; 21: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 85
	i32 278686392, ; 22: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 100
	i32 280482487, ; 23: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 94
	i32 293914992, ; 24: Xamarin.Android.Support.Transition => 0x1184c970 => 61
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 71
	i32 321597661, ; 26: System.Numerics => 0x132b30dd => 28
	i32 331266987, ; 27: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 65
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 98
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 151
	i32 388313361, ; 30: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 40
	i32 389971796, ; 31: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 46
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 84
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 128
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 93
	i32 465846621, ; 35: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 36: System.dll => 0x1bff388e => 27
	i32 476646585, ; 37: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 94
	i32 486930444, ; 38: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 105
	i32 514659665, ; 39: Xamarin.Android.Support.Compat => 0x1ead1551 => 44
	i32 524864063, ; 40: Xamarin.Android.Support.Print => 0x1f48ca3f => 58
	i32 526420162, ; 41: System.Transactions.dll => 0x1f6088c2 => 145
	i32 527452488, ; 42: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 138
	i32 532697492, ; 43: Syncfusion.SfListView.XForms => 0x1fc05194 => 25
	i32 539750087, ; 44: Xamarin.Android.Support.Design => 0x202beec7 => 50
	i32 571524804, ; 45: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 67
	i32 605376203, ; 46: System.IO.Compression.FileSystem => 0x24154ecb => 148
	i32 627609679, ; 47: Xamarin.AndroidX.CustomView => 0x2568904f => 89
	i32 663517072, ; 48: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 125
	i32 666292255, ; 49: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 77
	i32 690569205, ; 50: System.Xml.Linq.dll => 0x29293ff5 => 32
	i32 691348768, ; 51: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 140
	i32 692692150, ; 52: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 41
	i32 695102255, ; 53: Syncfusion.SfListView.XForms.dll => 0x296e6b2f => 25
	i32 700284507, ; 54: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 135
	i32 707987836, ; 55: Syncfusion.Cards.XForms.dll => 0x2a33097c => 16
	i32 719061231, ; 56: Syncfusion.Core.XForms.dll => 0x2adc00ef => 18
	i32 720511267, ; 57: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 139
	i32 775507847, ; 58: System.IO.Compression => 0x2e394f87 => 147
	i32 801787702, ; 59: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 54
	i32 809851609, ; 60: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 61: Xamarin.AndroidX.Print => 0x3246f6cd => 114
	i32 882883187, ; 62: Xamarin.Android.Support.v4.dll => 0x349fba73 => 62
	i32 902159924, ; 63: Rg.Plugins.Popup => 0x35c5de34 => 11
	i32 907231247, ; 64: Plugin.BluetoothClassic.Android => 0x3613400f => 10
	i32 916714535, ; 65: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 58
	i32 928116545, ; 66: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 134
	i32 955402788, ; 67: Newtonsoft.Json => 0x38f24a24 => 8
	i32 956575887, ; 68: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 139
	i32 958213972, ; 69: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 57
	i32 967690846, ; 70: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 98
	i32 974778368, ; 71: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 72: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 37
	i32 993064525, ; 73: Syncfusion.SfCarousel.XForms.Android => 0x3b30f64d => 22
	i32 1012816738, ; 74: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 117
	i32 1035644815, ; 75: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 76
	i32 1042160112, ; 76: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 131
	i32 1052210849, ; 77: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 102
	i32 1084122840, ; 78: Xamarin.Kotlin.StdLib => 0x409e66d8 => 137
	i32 1086034974, ; 79: Syncfusion.DataSource.Portable.dll => 0x40bb941e => 19
	i32 1098167829, ; 80: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 39
	i32 1098259244, ; 81: System => 0x41761b2c => 27
	i32 1175144683, ; 82: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 123
	i32 1178241025, ; 83: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 110
	i32 1204270330, ; 84: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 77
	i32 1264511973, ; 85: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 119
	i32 1267360935, ; 86: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 124
	i32 1275534314, ; 87: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 140
	i32 1278448581, ; 88: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 74
	i32 1292763917, ; 89: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 48
	i32 1293217323, ; 90: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 91
	i32 1297413738, ; 91: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 36
	i32 1359785034, ; 92: Xamarin.Android.Support.Design.dll => 0x510cac4a => 50
	i32 1365406463, ; 93: System.ServiceModel.Internals.dll => 0x516272ff => 142
	i32 1376866003, ; 94: Xamarin.AndroidX.SavedState => 0x52114ed3 => 117
	i32 1395857551, ; 95: Xamarin.AndroidX.Media.dll => 0x5333188f => 106
	i32 1406073936, ; 96: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 86
	i32 1445445088, ; 97: Xamarin.Android.Support.Fragment => 0x5627bde0 => 53
	i32 1460219004, ; 98: Xamarin.Forms.Xaml => 0x57092c7c => 132
	i32 1462112819, ; 99: System.IO.Compression.dll => 0x57261233 => 147
	i32 1469204771, ; 100: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 75
	i32 1486716862, ; 101: Syncfusion.Cards.XForms => 0x589d7fbe => 16
	i32 1496693446, ; 102: Syncfusion.SfListView.XForms.Android => 0x5935bac6 => 24
	i32 1516315406, ; 103: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 17
	i32 1574652163, ; 104: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 47
	i32 1582372066, ; 105: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 90
	i32 1587447679, ; 106: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 33
	i32 1592978981, ; 107: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 108: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 104
	i32 1624863272, ; 109: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 127
	i32 1636350590, ; 110: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 88
	i32 1639515021, ; 111: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 112: System.Runtime => 0x62c6282e => 30
	i32 1658241508, ; 113: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 121
	i32 1658251792, ; 114: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 133
	i32 1662014763, ; 115: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 68
	i32 1670060433, ; 116: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 85
	i32 1698840827, ; 117: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 136
	i32 1729485958, ; 118: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 81
	i32 1766324549, ; 119: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 120
	i32 1776026572, ; 120: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 121: Xamarin.AndroidX.Fragment => 0x6a96652d => 93
	i32 1808609942, ; 122: Xamarin.AndroidX.Loader => 0x6bcd3296 => 104
	i32 1813058853, ; 123: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 137
	i32 1813201214, ; 124: Xamarin.Google.Android.Material => 0x6c13413e => 133
	i32 1818569960, ; 125: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 111
	i32 1866717392, ; 126: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 54
	i32 1867746548, ; 127: Xamarin.Essentials.dll => 0x6f538cf4 => 128
	i32 1877418711, ; 128: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 67
	i32 1878053835, ; 129: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 132
	i32 1885316902, ; 130: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 78
	i32 1916660109, ; 131: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 39
	i32 1919157823, ; 132: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 108
	i32 1969191170, ; 133: Syncfusion.SfCarousel.XForms.dll => 0x755f7902 => 23
	i32 1983156543, ; 134: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 136
	i32 2019465201, ; 135: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 102
	i32 2037417872, ; 136: Xamarin.Android.Support.ViewPager => 0x79708790 => 70
	i32 2044222327, ; 137: Xamarin.Android.Support.Loader => 0x79d85b77 => 55
	i32 2055257422, ; 138: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 99
	i32 2071563619, ; 139: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 13
	i32 2079903147, ; 140: System.Runtime.dll => 0x7bf8cdab => 30
	i32 2090596640, ; 141: System.Numerics.Vectors => 0x7c9bf920 => 29
	i32 2097448633, ; 142: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 95
	i32 2126786730, ; 143: Xamarin.Forms.Platform.Android => 0x7ec430aa => 130
	i32 2139458754, ; 144: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 52
	i32 2166116741, ; 145: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 47
	i32 2196165013, ; 146: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 69
	i32 2201107256, ; 147: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 141
	i32 2201231467, ; 148: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 149: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 123
	i32 2234081415, ; 150: SteelStrickers.dll => 0x85296087 => 12
	i32 2244775296, ; 151: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 105
	i32 2256548716, ; 152: Xamarin.AndroidX.MultiDex => 0x8680336c => 108
	i32 2261435625, ; 153: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 97
	i32 2269504559, ; 154: SteelStrickers.Android.dll => 0x8745e42f => 0
	i32 2279755925, ; 155: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 116
	i32 2315684594, ; 156: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 72
	i32 2330457430, ; 157: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 46
	i32 2330986192, ; 158: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 59
	i32 2343171156, ; 159: Syncfusion.Core.XForms => 0x8ba9f454 => 18
	i32 2354730003, ; 160: Syncfusion.Licensing => 0x8c5a5413 => 21
	i32 2373288475, ; 161: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 53
	i32 2409053734, ; 162: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 113
	i32 2440966767, ; 163: Xamarin.Android.Support.Loader.dll => 0x917e326f => 55
	i32 2465532216, ; 164: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 84
	i32 2471841756, ; 165: netstandard.dll => 0x93554fdc => 143
	i32 2475788418, ; 166: Java.Interop.dll => 0x93918882 => 5
	i32 2487632829, ; 167: Xamarin.Android.Support.DocumentFile => 0x944643bd => 51
	i32 2501346920, ; 168: System.Data.DataSetExtensions => 0x95178668 => 146
	i32 2505896520, ; 169: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 101
	i32 2508407795, ; 170: Syncfusion.SfCarousel.XForms.Android.dll => 0x958343f3 => 22
	i32 2515096885, ; 171: Syncfusion.DataSource.Portable => 0x95e95535 => 19
	i32 2562349572, ; 172: Microsoft.CSharp => 0x98ba5a04 => 152
	i32 2581819634, ; 173: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 124
	i32 2605712449, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 141
	i32 2620871830, ; 175: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 88
	i32 2624644809, ; 176: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 92
	i32 2633051222, ; 177: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 100
	i32 2635300604, ; 178: Syncfusion.Buttons.XForms => 0x9d137efc => 14
	i32 2691162529, ; 179: SteelStrickers.Android => 0xa067e1a1 => 0
	i32 2698266930, ; 180: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 37
	i32 2701096212, ; 181: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 121
	i32 2732434636, ; 182: Plugin.BluetoothClassic.Abstractions.dll => 0xa2dda4cc => 9
	i32 2732626843, ; 183: Xamarin.AndroidX.Activity => 0xa2e0939b => 71
	i32 2737747696, ; 184: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 75
	i32 2751899777, ; 185: Xamarin.Android.Support.Collections => 0xa406a881 => 43
	i32 2754271178, ; 186: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 66
	i32 2766581644, ; 187: Xamarin.Forms.Core => 0xa4e6af8c => 129
	i32 2770495804, ; 188: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 135
	i32 2772484381, ; 189: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 112
	i32 2778768386, ; 190: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 126
	i32 2788639665, ; 191: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 56
	i32 2788775637, ; 192: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 60
	i32 2810250172, ; 193: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 86
	i32 2819470561, ; 194: System.Xml.dll => 0xa80db4e1 => 31
	i32 2853208004, ; 195: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 126
	i32 2855708567, ; 196: Xamarin.AndroidX.Transition => 0xaa36a797 => 122
	i32 2861816565, ; 197: Rg.Plugins.Popup.dll => 0xaa93daf5 => 11
	i32 2868557005, ; 198: Syncfusion.Licensing.dll => 0xaafab4cd => 21
	i32 2874148507, ; 199: Syncfusion.Core.XForms.Android => 0xab50069b => 17
	i32 2876493027, ; 200: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 60
	i32 2878950252, ; 201: Plugin.BluetoothClassic.Abstractions => 0xab994b6c => 9
	i32 2893257763, ; 202: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 34
	i32 2903344695, ; 203: System.ComponentModel.Composition => 0xad0d8637 => 149
	i32 2905242038, ; 204: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 205: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 127
	i32 2919462931, ; 206: System.Numerics.Vectors.dll => 0xae037813 => 29
	i32 2921128767, ; 207: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 73
	i32 2921692953, ; 208: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 49
	i32 2922925221, ; 209: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 68
	i32 2978675010, ; 210: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 91
	i32 3016983068, ; 211: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 119
	i32 3024354802, ; 212: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 96
	i32 3044182254, ; 213: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 214: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 42
	i32 3057625584, ; 215: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 109
	i32 3068715062, ; 216: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 35
	i32 3092211740, ; 217: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 57
	i32 3111772706, ; 218: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3194035187, ; 219: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 65
	i32 3204380047, ; 220: System.Data.dll => 0xbefef58f => 144
	i32 3204912593, ; 221: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 42
	i32 3211777861, ; 222: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 90
	i32 3233339011, ; 223: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 36
	i32 3247949154, ; 224: Mono.Security => 0xc197c562 => 153
	i32 3258312781, ; 225: Xamarin.AndroidX.CardView => 0xc235e84d => 81
	i32 3267021929, ; 226: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 79
	i32 3296380511, ; 227: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 43
	i32 3317135071, ; 228: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 89
	i32 3317144872, ; 229: System.Data => 0xc5b79d28 => 144
	i32 3321585405, ; 230: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 51
	i32 3340431453, ; 231: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 78
	i32 3345895724, ; 232: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 115
	i32 3346324047, ; 233: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 110
	i32 3352662376, ; 234: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 45
	i32 3353484488, ; 235: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 95
	i32 3357663996, ; 236: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 48
	i32 3362522851, ; 237: Xamarin.AndroidX.Core => 0xc86c06e3 => 87
	i32 3366347497, ; 238: Java.Interop => 0xc8a662e9 => 5
	i32 3369739654, ; 239: Xamarin.AndroidX.Palette => 0xc8da2586 => 112
	i32 3374999561, ; 240: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 116
	i32 3375054972, ; 241: Plugin.BluetoothClassic.Android.dll => 0xc92b407c => 10
	i32 3404865022, ; 242: System.ServiceModel.Internals => 0xcaf21dfe => 142
	i32 3429136800, ; 243: System.Xml => 0xcc6479a0 => 31
	i32 3430777524, ; 244: netstandard => 0xcc7d82b4 => 143
	i32 3434749838, ; 245: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 13
	i32 3439690031, ; 246: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 41
	i32 3441283291, ; 247: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 92
	i32 3448958507, ; 248: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 20
	i32 3476120550, ; 249: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 250: System.Transactions => 0xcfd0c798 => 145
	i32 3493954962, ; 251: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 83
	i32 3498942916, ; 252: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 64
	i32 3501239056, ; 253: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 79
	i32 3509114376, ; 254: System.Xml.Linq => 0xd128d608 => 32
	i32 3536029504, ; 255: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 130
	i32 3547625832, ; 256: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 59
	i32 3567349600, ; 257: System.ComponentModel.Composition.dll => 0xd4a16f60 => 149
	i32 3618140916, ; 258: Xamarin.AndroidX.Preference => 0xd7a872f4 => 113
	i32 3627220390, ; 259: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 114
	i32 3629053394, ; 260: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 107
	i32 3632359727, ; 261: Xamarin.Forms.Platform => 0xd881692f => 131
	i32 3633644679, ; 262: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 73
	i32 3641597786, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 99
	i32 3664423555, ; 264: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 70
	i32 3672376724, ; 265: SteelStrickers => 0xdae40594 => 12
	i32 3672681054, ; 266: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 267: System.Web.Services.dll => 0xdb2009fe => 150
	i32 3678221644, ; 268: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 63
	i32 3681174138, ; 269: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 35
	i32 3682565725, ; 270: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 80
	i32 3684561358, ; 271: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 83
	i32 3689375977, ; 272: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3714038699, ; 273: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 56
	i32 3718463572, ; 274: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 40
	i32 3718780102, ; 275: Xamarin.AndroidX.Annotation => 0xdda814c6 => 72
	i32 3724971120, ; 276: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 109
	i32 3758932259, ; 277: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 97
	i32 3759042612, ; 278: Syncfusion.SfCarousel.XForms => 0xe00e7034 => 23
	i32 3776062606, ; 279: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 52
	i32 3786282454, ; 280: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 82
	i32 3789524022, ; 281: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 66
	i32 3822602673, ; 282: Xamarin.AndroidX.Media => 0xe3d849b1 => 106
	i32 3829621856, ; 283: System.Numerics.dll => 0xe4436460 => 28
	i32 3832731800, ; 284: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 45
	i32 3837938240, ; 285: Syncfusion.SfListView.XForms.Android.dll => 0xe4c24a40 => 24
	i32 3862817207, ; 286: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 38
	i32 3874897629, ; 287: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 38
	i32 3883175360, ; 288: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 63
	i32 3885922214, ; 289: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 122
	i32 3888767677, ; 290: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 115
	i32 3896760992, ; 291: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 87
	i32 3920810846, ; 292: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 148
	i32 3921031405, ; 293: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 125
	i32 3929079551, ; 294: Syncfusion.Cards.XForms.Android.dll => 0xea30feff => 15
	i32 3931092270, ; 295: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 111
	i32 3945713374, ; 296: System.Data.DataSetExtensions.dll => 0xeb2ecede => 146
	i32 3955647286, ; 297: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 76
	i32 4015948917, ; 298: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 74
	i32 4025784931, ; 299: System.Memory => 0xeff49a63 => 151
	i32 4051712506, ; 300: Syncfusion.GridCommon.Portable => 0xf18039fa => 20
	i32 4063435586, ; 301: Xamarin.Android.Support.CustomView => 0xf2331b42 => 49
	i32 4105002889, ; 302: Mono.Security.dll => 0xf4ad5f89 => 153
	i32 4151237749, ; 303: System.Core => 0xf76edc75 => 26
	i32 4182413190, ; 304: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 103
	i32 4216993138, ; 305: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 61
	i32 4219003402, ; 306: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 64
	i32 4292120959 ; 307: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 103
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [308 x i32] [
	i32 15, i32 101, i32 134, i32 8, i32 129, i32 69, i32 14, i32 118, ; 0..7
	i32 118, i32 138, i32 33, i32 82, i32 44, i32 120, i32 34, i32 80, ; 8..15
	i32 62, i32 96, i32 152, i32 107, i32 150, i32 85, i32 100, i32 94, ; 16..23
	i32 61, i32 71, i32 28, i32 65, i32 98, i32 151, i32 40, i32 46, ; 24..31
	i32 84, i32 128, i32 93, i32 7, i32 27, i32 94, i32 105, i32 44, ; 32..39
	i32 58, i32 145, i32 138, i32 25, i32 50, i32 67, i32 148, i32 89, ; 40..47
	i32 125, i32 77, i32 32, i32 140, i32 41, i32 25, i32 135, i32 16, ; 48..55
	i32 18, i32 139, i32 147, i32 54, i32 1, i32 114, i32 62, i32 11, ; 56..63
	i32 10, i32 58, i32 134, i32 8, i32 139, i32 57, i32 98, i32 4, ; 64..71
	i32 37, i32 22, i32 117, i32 76, i32 131, i32 102, i32 137, i32 19, ; 72..79
	i32 39, i32 27, i32 123, i32 110, i32 77, i32 119, i32 124, i32 140, ; 80..87
	i32 74, i32 48, i32 91, i32 36, i32 50, i32 142, i32 117, i32 106, ; 88..95
	i32 86, i32 53, i32 132, i32 147, i32 75, i32 16, i32 24, i32 17, ; 96..103
	i32 47, i32 90, i32 33, i32 3, i32 104, i32 127, i32 88, i32 2, ; 104..111
	i32 30, i32 121, i32 133, i32 68, i32 85, i32 136, i32 81, i32 120, ; 112..119
	i32 26, i32 93, i32 104, i32 137, i32 133, i32 111, i32 54, i32 128, ; 120..127
	i32 67, i32 132, i32 78, i32 39, i32 108, i32 23, i32 136, i32 102, ; 128..135
	i32 70, i32 55, i32 99, i32 13, i32 30, i32 29, i32 95, i32 130, ; 136..143
	i32 52, i32 47, i32 69, i32 141, i32 2, i32 123, i32 12, i32 105, ; 144..151
	i32 108, i32 97, i32 0, i32 116, i32 72, i32 46, i32 59, i32 18, ; 152..159
	i32 21, i32 53, i32 113, i32 55, i32 84, i32 143, i32 5, i32 51, ; 160..167
	i32 146, i32 101, i32 22, i32 19, i32 152, i32 124, i32 141, i32 88, ; 168..175
	i32 92, i32 100, i32 14, i32 0, i32 37, i32 121, i32 9, i32 71, ; 176..183
	i32 75, i32 43, i32 66, i32 129, i32 135, i32 112, i32 126, i32 56, ; 184..191
	i32 60, i32 86, i32 31, i32 126, i32 122, i32 11, i32 21, i32 17, ; 192..199
	i32 60, i32 9, i32 34, i32 149, i32 7, i32 127, i32 29, i32 73, ; 200..207
	i32 49, i32 68, i32 91, i32 119, i32 96, i32 4, i32 42, i32 109, ; 208..215
	i32 35, i32 57, i32 3, i32 65, i32 144, i32 42, i32 90, i32 36, ; 216..223
	i32 153, i32 81, i32 79, i32 43, i32 89, i32 144, i32 51, i32 78, ; 224..231
	i32 115, i32 110, i32 45, i32 95, i32 48, i32 87, i32 5, i32 112, ; 232..239
	i32 116, i32 10, i32 142, i32 31, i32 143, i32 13, i32 41, i32 92, ; 240..247
	i32 20, i32 6, i32 145, i32 83, i32 64, i32 79, i32 32, i32 130, ; 248..255
	i32 59, i32 149, i32 113, i32 114, i32 107, i32 131, i32 73, i32 99, ; 256..263
	i32 70, i32 12, i32 6, i32 150, i32 63, i32 35, i32 80, i32 83, ; 264..271
	i32 1, i32 56, i32 40, i32 72, i32 109, i32 97, i32 23, i32 52, ; 272..279
	i32 82, i32 66, i32 106, i32 28, i32 45, i32 24, i32 38, i32 38, ; 280..287
	i32 63, i32 122, i32 115, i32 87, i32 148, i32 125, i32 15, i32 111, ; 288..295
	i32 146, i32 76, i32 74, i32 151, i32 20, i32 49, i32 153, i32 26, ; 296..303
	i32 103, i32 61, i32 64, i32 103 ; 304..307
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
