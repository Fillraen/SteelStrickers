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
@assembly_image_cache_hashes = local_unnamed_addr constant [316 x i32] [
	i32 5009434, ; 0: Syncfusion.Cards.XForms.Android => 0x4c701a => 19
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 105
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 138
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 10
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 133
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 73
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 18
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 122
	i32 102832730, ; 8: Plugin.SimpleAudioPlayer => 0x6211a5a => 14
	i32 120558881, ; 9: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 122
	i32 134690465, ; 10: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 142
	i32 160529393, ; 11: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 37
	i32 165246403, ; 12: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 86
	i32 166922606, ; 13: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 48
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 124
	i32 201930040, ; 15: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 38
	i32 209399409, ; 16: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 84
	i32 219130465, ; 17: Xamarin.Android.Support.v4 => 0xd0faa61 => 66
	i32 230216969, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 100
	i32 230752869, ; 19: Microsoft.CSharp.dll => 0xdc10265 => 156
	i32 232587938, ; 20: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 111
	i32 232815796, ; 21: System.Web.Services => 0xde07cb4 => 152
	i32 261689757, ; 22: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 89
	i32 278686392, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 104
	i32 280482487, ; 24: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 98
	i32 293914992, ; 25: Xamarin.Android.Support.Transition => 0x1184c970 => 65
	i32 318968648, ; 26: Xamarin.AndroidX.Activity.dll => 0x13031348 => 75
	i32 321597661, ; 27: System.Numerics => 0x132b30dd => 32
	i32 331266987, ; 28: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 69
	i32 342366114, ; 29: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 102
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 154
	i32 388313361, ; 31: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 44
	i32 389971796, ; 32: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 50
	i32 441335492, ; 33: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 88
	i32 442521989, ; 34: Xamarin.Essentials => 0x1a605985 => 132
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 97
	i32 465846621, ; 36: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 37: System.dll => 0x1bff388e => 31
	i32 476646585, ; 38: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 98
	i32 478296930, ; 39: MQTTnet => 0x1c823b62 => 8
	i32 486930444, ; 40: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 109
	i32 514659665, ; 41: Xamarin.Android.Support.Compat => 0x1ead1551 => 48
	i32 524864063, ; 42: Xamarin.Android.Support.Print => 0x1f48ca3f => 62
	i32 526420162, ; 43: System.Transactions.dll => 0x1f6088c2 => 147
	i32 527452488, ; 44: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 142
	i32 532697492, ; 45: Syncfusion.SfListView.XForms => 0x1fc05194 => 29
	i32 539750087, ; 46: Xamarin.Android.Support.Design => 0x202beec7 => 54
	i32 571524804, ; 47: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 71
	i32 605376203, ; 48: System.IO.Compression.FileSystem => 0x24154ecb => 150
	i32 627609679, ; 49: Xamarin.AndroidX.CustomView => 0x2568904f => 93
	i32 663517072, ; 50: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 129
	i32 666292255, ; 51: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 81
	i32 690569205, ; 52: System.Xml.Linq.dll => 0x29293ff5 => 36
	i32 691348768, ; 53: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 144
	i32 692692150, ; 54: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 45
	i32 695102255, ; 55: Syncfusion.SfListView.XForms.dll => 0x296e6b2f => 29
	i32 700284507, ; 56: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 139
	i32 707987836, ; 57: Syncfusion.Cards.XForms.dll => 0x2a33097c => 20
	i32 719061231, ; 58: Syncfusion.Core.XForms.dll => 0x2adc00ef => 22
	i32 720511267, ; 59: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 143
	i32 775507847, ; 60: System.IO.Compression => 0x2e394f87 => 149
	i32 801787702, ; 61: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 58
	i32 809851609, ; 62: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 63: Xamarin.AndroidX.Print => 0x3246f6cd => 118
	i32 882883187, ; 64: Xamarin.Android.Support.v4.dll => 0x349fba73 => 66
	i32 902159924, ; 65: Rg.Plugins.Popup => 0x35c5de34 => 15
	i32 907231247, ; 66: Plugin.BluetoothClassic.Android => 0x3613400f => 12
	i32 916714535, ; 67: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 62
	i32 928116545, ; 68: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 138
	i32 955402788, ; 69: Newtonsoft.Json => 0x38f24a24 => 10
	i32 956575887, ; 70: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 143
	i32 958213972, ; 71: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 61
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 102
	i32 974778368, ; 73: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 987342438, ; 74: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 41
	i32 993064525, ; 75: Syncfusion.SfCarousel.XForms.Android => 0x3b30f64d => 26
	i32 996170219, ; 76: Plugin.SimpleAudioPlayer.Abstractions => 0x3b6059eb => 13
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 121
	i32 1035644815, ; 78: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 80
	i32 1042160112, ; 79: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 135
	i32 1052210849, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 106
	i32 1084122840, ; 81: Xamarin.Kotlin.StdLib => 0x409e66d8 => 141
	i32 1086034974, ; 82: Syncfusion.DataSource.Portable.dll => 0x40bb941e => 23
	i32 1098167829, ; 83: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 43
	i32 1098259244, ; 84: System => 0x41761b2c => 31
	i32 1175144683, ; 85: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 127
	i32 1178241025, ; 86: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 114
	i32 1204270330, ; 87: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 81
	i32 1264511973, ; 88: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 123
	i32 1267360935, ; 89: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 128
	i32 1275534314, ; 90: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 144
	i32 1278448581, ; 91: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 78
	i32 1292763917, ; 92: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 52
	i32 1293217323, ; 93: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 95
	i32 1297413738, ; 94: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 40
	i32 1359785034, ; 95: Xamarin.Android.Support.Design.dll => 0x510cac4a => 54
	i32 1364015309, ; 96: System.IO => 0x514d38cd => 155
	i32 1365406463, ; 97: System.ServiceModel.Internals.dll => 0x516272ff => 153
	i32 1376866003, ; 98: Xamarin.AndroidX.SavedState => 0x52114ed3 => 121
	i32 1395857551, ; 99: Xamarin.AndroidX.Media.dll => 0x5333188f => 110
	i32 1406073936, ; 100: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 90
	i32 1445445088, ; 101: Xamarin.Android.Support.Fragment => 0x5627bde0 => 57
	i32 1460219004, ; 102: Xamarin.Forms.Xaml => 0x57092c7c => 136
	i32 1462112819, ; 103: System.IO.Compression.dll => 0x57261233 => 149
	i32 1469204771, ; 104: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 79
	i32 1486716862, ; 105: Syncfusion.Cards.XForms => 0x589d7fbe => 20
	i32 1496693446, ; 106: Syncfusion.SfListView.XForms.Android => 0x5935bac6 => 28
	i32 1516315406, ; 107: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 21
	i32 1574652163, ; 108: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 51
	i32 1582372066, ; 109: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 94
	i32 1587447679, ; 110: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 37
	i32 1592978981, ; 111: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 112: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 108
	i32 1624863272, ; 113: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 131
	i32 1626988262, ; 114: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x60f9dee6 => 13
	i32 1636350590, ; 115: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 92
	i32 1639515021, ; 116: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 117: System.Runtime => 0x62c6282e => 34
	i32 1658241508, ; 118: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 125
	i32 1658251792, ; 119: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 137
	i32 1662014763, ; 120: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 72
	i32 1670060433, ; 121: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 89
	i32 1698840827, ; 122: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 140
	i32 1729485958, ; 123: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 85
	i32 1766324549, ; 124: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 124
	i32 1776026572, ; 125: System.Core.dll => 0x69dc03cc => 30
	i32 1788241197, ; 126: Xamarin.AndroidX.Fragment => 0x6a96652d => 97
	i32 1808609942, ; 127: Xamarin.AndroidX.Loader => 0x6bcd3296 => 108
	i32 1813058853, ; 128: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 141
	i32 1813201214, ; 129: Xamarin.Google.Android.Material => 0x6c13413e => 137
	i32 1818569960, ; 130: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 115
	i32 1866717392, ; 131: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 58
	i32 1867746548, ; 132: Xamarin.Essentials.dll => 0x6f538cf4 => 132
	i32 1877418711, ; 133: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 71
	i32 1878053835, ; 134: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 136
	i32 1885316902, ; 135: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 82
	i32 1916660109, ; 136: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 43
	i32 1919157823, ; 137: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 112
	i32 1969191170, ; 138: Syncfusion.SfCarousel.XForms.dll => 0x755f7902 => 27
	i32 1983156543, ; 139: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 140
	i32 2019465201, ; 140: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 106
	i32 2037417872, ; 141: Xamarin.Android.Support.ViewPager => 0x79708790 => 74
	i32 2044222327, ; 142: Xamarin.Android.Support.Loader => 0x79d85b77 => 59
	i32 2055257422, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 103
	i32 2071563619, ; 144: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 17
	i32 2079903147, ; 145: System.Runtime.dll => 0x7bf8cdab => 34
	i32 2090596640, ; 146: System.Numerics.Vectors => 0x7c9bf920 => 33
	i32 2097448633, ; 147: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 99
	i32 2126786730, ; 148: Xamarin.Forms.Platform.Android => 0x7ec430aa => 134
	i32 2139458754, ; 149: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 56
	i32 2166116741, ; 150: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 51
	i32 2196165013, ; 151: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 73
	i32 2201107256, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 145
	i32 2201231467, ; 153: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 154: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 127
	i32 2234081415, ; 155: SteelStrickers.dll => 0x85296087 => 16
	i32 2244775296, ; 156: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 109
	i32 2256548716, ; 157: Xamarin.AndroidX.MultiDex => 0x8680336c => 112
	i32 2261435625, ; 158: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 101
	i32 2269504559, ; 159: SteelStrickers.Android.dll => 0x8745e42f => 0
	i32 2279755925, ; 160: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 120
	i32 2287417322, ; 161: Plugin.SimpleAudioPlayer.dll => 0x885737ea => 14
	i32 2315684594, ; 162: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 76
	i32 2330457430, ; 163: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 50
	i32 2330986192, ; 164: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 63
	i32 2343171156, ; 165: Syncfusion.Core.XForms => 0x8ba9f454 => 22
	i32 2354730003, ; 166: Syncfusion.Licensing => 0x8c5a5413 => 25
	i32 2373288475, ; 167: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 57
	i32 2409053734, ; 168: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 117
	i32 2440966767, ; 169: Xamarin.Android.Support.Loader.dll => 0x917e326f => 59
	i32 2465532216, ; 170: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 88
	i32 2471841756, ; 171: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 172: Java.Interop.dll => 0x93918882 => 6
	i32 2487632829, ; 173: Xamarin.Android.Support.DocumentFile => 0x944643bd => 55
	i32 2501346920, ; 174: System.Data.DataSetExtensions => 0x95178668 => 148
	i32 2505896520, ; 175: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 105
	i32 2508407795, ; 176: Syncfusion.SfCarousel.XForms.Android.dll => 0x958343f3 => 26
	i32 2515096885, ; 177: Syncfusion.DataSource.Portable => 0x95e95535 => 23
	i32 2562349572, ; 178: Microsoft.CSharp => 0x98ba5a04 => 156
	i32 2581819634, ; 179: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 128
	i32 2605712449, ; 180: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 145
	i32 2620871830, ; 181: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 92
	i32 2624644809, ; 182: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 96
	i32 2633051222, ; 183: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 104
	i32 2635300604, ; 184: Syncfusion.Buttons.XForms => 0x9d137efc => 18
	i32 2691162529, ; 185: SteelStrickers.Android => 0xa067e1a1 => 0
	i32 2693849962, ; 186: System.IO.dll => 0xa090e36a => 155
	i32 2698266930, ; 187: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 41
	i32 2701096212, ; 188: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 125
	i32 2732434636, ; 189: Plugin.BluetoothClassic.Abstractions.dll => 0xa2dda4cc => 11
	i32 2732626843, ; 190: Xamarin.AndroidX.Activity => 0xa2e0939b => 75
	i32 2737747696, ; 191: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 79
	i32 2751899777, ; 192: Xamarin.Android.Support.Collections => 0xa406a881 => 47
	i32 2754271178, ; 193: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 70
	i32 2766581644, ; 194: Xamarin.Forms.Core => 0xa4e6af8c => 133
	i32 2770495804, ; 195: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 139
	i32 2772484381, ; 196: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 116
	i32 2778768386, ; 197: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 130
	i32 2788639665, ; 198: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 60
	i32 2788775637, ; 199: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 64
	i32 2810250172, ; 200: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 90
	i32 2819470561, ; 201: System.Xml.dll => 0xa80db4e1 => 35
	i32 2853208004, ; 202: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 130
	i32 2855708567, ; 203: Xamarin.AndroidX.Transition => 0xaa36a797 => 126
	i32 2861816565, ; 204: Rg.Plugins.Popup.dll => 0xaa93daf5 => 15
	i32 2868557005, ; 205: Syncfusion.Licensing.dll => 0xaafab4cd => 25
	i32 2874148507, ; 206: Syncfusion.Core.XForms.Android => 0xab50069b => 21
	i32 2876493027, ; 207: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 64
	i32 2878950252, ; 208: Plugin.BluetoothClassic.Abstractions => 0xab994b6c => 11
	i32 2893257763, ; 209: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 38
	i32 2903344695, ; 210: System.ComponentModel.Composition => 0xad0d8637 => 151
	i32 2905242038, ; 211: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 212: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 131
	i32 2919462931, ; 213: System.Numerics.Vectors.dll => 0xae037813 => 33
	i32 2921128767, ; 214: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 77
	i32 2921692953, ; 215: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 53
	i32 2922925221, ; 216: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 72
	i32 2978675010, ; 217: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 95
	i32 2997658596, ; 218: MQTTnet.dll => 0xb2aca3e4 => 8
	i32 3016983068, ; 219: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 123
	i32 3024354802, ; 220: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 100
	i32 3044182254, ; 221: FormsViewGroup => 0xb57288ee => 5
	i32 3056250942, ; 222: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 46
	i32 3057625584, ; 223: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 113
	i32 3068715062, ; 224: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 39
	i32 3092211740, ; 225: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 61
	i32 3111772706, ; 226: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3194035187, ; 227: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 69
	i32 3204380047, ; 228: System.Data.dll => 0xbefef58f => 146
	i32 3204912593, ; 229: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 46
	i32 3211777861, ; 230: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 94
	i32 3233339011, ; 231: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 40
	i32 3247949154, ; 232: Mono.Security => 0xc197c562 => 157
	i32 3258312781, ; 233: Xamarin.AndroidX.CardView => 0xc235e84d => 85
	i32 3267021929, ; 234: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 83
	i32 3296380511, ; 235: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 47
	i32 3317135071, ; 236: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 93
	i32 3317144872, ; 237: System.Data => 0xc5b79d28 => 146
	i32 3321585405, ; 238: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 55
	i32 3340431453, ; 239: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 82
	i32 3345895724, ; 240: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 119
	i32 3346324047, ; 241: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 114
	i32 3352662376, ; 242: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 49
	i32 3353484488, ; 243: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 99
	i32 3357663996, ; 244: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 52
	i32 3362522851, ; 245: Xamarin.AndroidX.Core => 0xc86c06e3 => 91
	i32 3366347497, ; 246: Java.Interop => 0xc8a662e9 => 6
	i32 3369739654, ; 247: Xamarin.AndroidX.Palette => 0xc8da2586 => 116
	i32 3374999561, ; 248: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 120
	i32 3375054972, ; 249: Plugin.BluetoothClassic.Android.dll => 0xc92b407c => 12
	i32 3404865022, ; 250: System.ServiceModel.Internals => 0xcaf21dfe => 153
	i32 3429136800, ; 251: System.Xml => 0xcc6479a0 => 35
	i32 3430777524, ; 252: netstandard => 0xcc7d82b4 => 1
	i32 3434749838, ; 253: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 17
	i32 3439690031, ; 254: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 45
	i32 3441283291, ; 255: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 96
	i32 3448958507, ; 256: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 24
	i32 3476120550, ; 257: Mono.Android => 0xcf3163e6 => 7
	i32 3486566296, ; 258: System.Transactions => 0xcfd0c798 => 147
	i32 3493954962, ; 259: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 87
	i32 3498942916, ; 260: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 68
	i32 3501239056, ; 261: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 83
	i32 3509114376, ; 262: System.Xml.Linq => 0xd128d608 => 36
	i32 3536029504, ; 263: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 134
	i32 3547625832, ; 264: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 63
	i32 3567349600, ; 265: System.ComponentModel.Composition.dll => 0xd4a16f60 => 151
	i32 3618140916, ; 266: Xamarin.AndroidX.Preference => 0xd7a872f4 => 117
	i32 3627220390, ; 267: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 118
	i32 3629053394, ; 268: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 111
	i32 3632359727, ; 269: Xamarin.Forms.Platform => 0xd881692f => 135
	i32 3633644679, ; 270: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 77
	i32 3641597786, ; 271: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 103
	i32 3664423555, ; 272: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 74
	i32 3672376724, ; 273: SteelStrickers => 0xdae40594 => 16
	i32 3672681054, ; 274: Mono.Android.dll => 0xdae8aa5e => 7
	i32 3676310014, ; 275: System.Web.Services.dll => 0xdb2009fe => 152
	i32 3678221644, ; 276: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 67
	i32 3681174138, ; 277: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 39
	i32 3682565725, ; 278: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 84
	i32 3684561358, ; 279: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 87
	i32 3689375977, ; 280: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3714038699, ; 281: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 60
	i32 3718463572, ; 282: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 44
	i32 3718780102, ; 283: Xamarin.AndroidX.Annotation => 0xdda814c6 => 76
	i32 3724971120, ; 284: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 113
	i32 3758932259, ; 285: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 101
	i32 3759042612, ; 286: Syncfusion.SfCarousel.XForms => 0xe00e7034 => 27
	i32 3776062606, ; 287: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 56
	i32 3786282454, ; 288: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 86
	i32 3789524022, ; 289: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 70
	i32 3822602673, ; 290: Xamarin.AndroidX.Media => 0xe3d849b1 => 110
	i32 3829621856, ; 291: System.Numerics.dll => 0xe4436460 => 32
	i32 3832731800, ; 292: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 49
	i32 3837938240, ; 293: Syncfusion.SfListView.XForms.Android.dll => 0xe4c24a40 => 28
	i32 3862817207, ; 294: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 42
	i32 3874897629, ; 295: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 42
	i32 3883175360, ; 296: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 67
	i32 3885922214, ; 297: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 126
	i32 3888767677, ; 298: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 119
	i32 3896760992, ; 299: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 91
	i32 3920810846, ; 300: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 150
	i32 3921031405, ; 301: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 129
	i32 3929079551, ; 302: Syncfusion.Cards.XForms.Android.dll => 0xea30feff => 19
	i32 3931092270, ; 303: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 115
	i32 3945713374, ; 304: System.Data.DataSetExtensions.dll => 0xeb2ecede => 148
	i32 3955647286, ; 305: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 80
	i32 4015948917, ; 306: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 78
	i32 4025784931, ; 307: System.Memory => 0xeff49a63 => 154
	i32 4051712506, ; 308: Syncfusion.GridCommon.Portable => 0xf18039fa => 24
	i32 4063435586, ; 309: Xamarin.Android.Support.CustomView => 0xf2331b42 => 53
	i32 4105002889, ; 310: Mono.Security.dll => 0xf4ad5f89 => 157
	i32 4151237749, ; 311: System.Core => 0xf76edc75 => 30
	i32 4182413190, ; 312: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 107
	i32 4216993138, ; 313: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 65
	i32 4219003402, ; 314: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 68
	i32 4292120959 ; 315: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 107
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [316 x i32] [
	i32 19, i32 105, i32 138, i32 10, i32 133, i32 73, i32 18, i32 122, ; 0..7
	i32 14, i32 122, i32 142, i32 37, i32 86, i32 48, i32 124, i32 38, ; 8..15
	i32 84, i32 66, i32 100, i32 156, i32 111, i32 152, i32 89, i32 104, ; 16..23
	i32 98, i32 65, i32 75, i32 32, i32 69, i32 102, i32 154, i32 44, ; 24..31
	i32 50, i32 88, i32 132, i32 97, i32 9, i32 31, i32 98, i32 8, ; 32..39
	i32 109, i32 48, i32 62, i32 147, i32 142, i32 29, i32 54, i32 71, ; 40..47
	i32 150, i32 93, i32 129, i32 81, i32 36, i32 144, i32 45, i32 29, ; 48..55
	i32 139, i32 20, i32 22, i32 143, i32 149, i32 58, i32 2, i32 118, ; 56..63
	i32 66, i32 15, i32 12, i32 62, i32 138, i32 10, i32 143, i32 61, ; 64..71
	i32 102, i32 5, i32 41, i32 26, i32 13, i32 121, i32 80, i32 135, ; 72..79
	i32 106, i32 141, i32 23, i32 43, i32 31, i32 127, i32 114, i32 81, ; 80..87
	i32 123, i32 128, i32 144, i32 78, i32 52, i32 95, i32 40, i32 54, ; 88..95
	i32 155, i32 153, i32 121, i32 110, i32 90, i32 57, i32 136, i32 149, ; 96..103
	i32 79, i32 20, i32 28, i32 21, i32 51, i32 94, i32 37, i32 4, ; 104..111
	i32 108, i32 131, i32 13, i32 92, i32 3, i32 34, i32 125, i32 137, ; 112..119
	i32 72, i32 89, i32 140, i32 85, i32 124, i32 30, i32 97, i32 108, ; 120..127
	i32 141, i32 137, i32 115, i32 58, i32 132, i32 71, i32 136, i32 82, ; 128..135
	i32 43, i32 112, i32 27, i32 140, i32 106, i32 74, i32 59, i32 103, ; 136..143
	i32 17, i32 34, i32 33, i32 99, i32 134, i32 56, i32 51, i32 73, ; 144..151
	i32 145, i32 3, i32 127, i32 16, i32 109, i32 112, i32 101, i32 0, ; 152..159
	i32 120, i32 14, i32 76, i32 50, i32 63, i32 22, i32 25, i32 57, ; 160..167
	i32 117, i32 59, i32 88, i32 1, i32 6, i32 55, i32 148, i32 105, ; 168..175
	i32 26, i32 23, i32 156, i32 128, i32 145, i32 92, i32 96, i32 104, ; 176..183
	i32 18, i32 0, i32 155, i32 41, i32 125, i32 11, i32 75, i32 79, ; 184..191
	i32 47, i32 70, i32 133, i32 139, i32 116, i32 130, i32 60, i32 64, ; 192..199
	i32 90, i32 35, i32 130, i32 126, i32 15, i32 25, i32 21, i32 64, ; 200..207
	i32 11, i32 38, i32 151, i32 9, i32 131, i32 33, i32 77, i32 53, ; 208..215
	i32 72, i32 95, i32 8, i32 123, i32 100, i32 5, i32 46, i32 113, ; 216..223
	i32 39, i32 61, i32 4, i32 69, i32 146, i32 46, i32 94, i32 40, ; 224..231
	i32 157, i32 85, i32 83, i32 47, i32 93, i32 146, i32 55, i32 82, ; 232..239
	i32 119, i32 114, i32 49, i32 99, i32 52, i32 91, i32 6, i32 116, ; 240..247
	i32 120, i32 12, i32 153, i32 35, i32 1, i32 17, i32 45, i32 96, ; 248..255
	i32 24, i32 7, i32 147, i32 87, i32 68, i32 83, i32 36, i32 134, ; 256..263
	i32 63, i32 151, i32 117, i32 118, i32 111, i32 135, i32 77, i32 103, ; 264..271
	i32 74, i32 16, i32 7, i32 152, i32 67, i32 39, i32 84, i32 87, ; 272..279
	i32 2, i32 60, i32 44, i32 76, i32 113, i32 101, i32 27, i32 56, ; 280..287
	i32 86, i32 70, i32 110, i32 32, i32 49, i32 28, i32 42, i32 42, ; 288..295
	i32 67, i32 126, i32 119, i32 91, i32 150, i32 129, i32 19, i32 115, ; 296..303
	i32 148, i32 80, i32 78, i32 154, i32 24, i32 53, i32 157, i32 30, ; 304..311
	i32 107, i32 65, i32 68, i32 107 ; 312..315
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
