.class public final Landroidx/compose/runtime/Recomposer;
.super Landroidx/compose/runtime/CompositionContext;
.source "Recomposer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Recomposer$Companion;,
        Landroidx/compose/runtime/Recomposer$HotReloadable;,
        Landroidx/compose/runtime/Recomposer$RecomposerErrorState;,
        Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;,
        Landroidx/compose/runtime/Recomposer$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 9 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 10 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1646:1\n1299#1,5:1712\n1305#1:1722\n1299#1,5:1735\n1305#1:1745\n1299#1,5:1766\n1305#1:1829\n1208#2:1647\n1187#2,2:1648\n89#3:1650\n89#3:1651\n89#3:1654\n89#3:1656\n89#3:1663\n89#3:1664\n89#3:1665\n89#3:1666\n89#3:1684\n89#3:1685\n89#3:1686\n89#3:1687\n89#3:1688\n89#3:1689\n89#3:1690\n89#3:1697\n89#3:1707\n89#3:1710\n89#3:1711\n89#3:1723\n89#3:1724\n89#3:1774\n89#3:1816\n89#3:1830\n89#3:1853\n89#3:1854\n89#3:1855\n89#3:1856\n89#3:1859\n89#3:1862\n89#3:1863\n89#3:1864\n89#3:1865\n89#3:1866\n89#3:1867\n89#3:1868\n1229#4,2:1652\n1#5:1655\n1#5:1812\n33#6,6:1657\n33#6,6:1667\n33#6,6:1691\n93#6,2:1725\n33#6,4:1727\n95#6,2:1731\n38#6:1733\n97#6:1734\n120#6,3:1746\n33#6,4:1749\n123#6,2:1753\n125#6,2:1762\n38#6:1764\n127#6:1765\n82#6,3:1775\n33#6,4:1778\n85#6,2:1782\n38#6:1784\n87#6:1785\n110#6,2:1786\n33#6,6:1788\n112#6:1794\n110#6,2:1795\n33#6,6:1797\n112#6:1803\n211#6,3:1804\n33#6,4:1807\n214#6:1811\n215#6:1813\n38#6:1814\n216#6:1815\n231#6,3:1817\n64#6,4:1820\n234#6,2:1824\n69#6:1826\n236#6:1827\n82#6,3:1831\n33#6,4:1834\n85#6,2:1838\n38#6:1840\n87#6:1841\n33#6,6:1842\n460#7,11:1673\n735#7,2:1857\n728#7,2:1860\n314#8,9:1698\n323#8,2:1708\n138#9,5:1717\n138#9,5:1740\n138#9,3:1771\n142#9:1828\n138#9,5:1848\n361#10,7:1755\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n*L\n1121#1:1712,5\n1121#1:1722\n1198#1:1735,5\n1198#1:1745\n1218#1:1766,5\n1218#1:1829\n218#1:1647\n218#1:1648,2\n297#1:1650\n347#1:1651\n441#1:1654\n446#1:1656\n460#1:1663\n469#1:1664\n474#1:1665\n485#1:1666\n497#1:1684\n505#1:1685\n751#1:1686\n781#1:1687\n812#1:1688\n824#1:1689\n841#1:1690\n989#1:1697\n1001#1:1707\n1086#1:1710\n1102#1:1711\n1134#1:1723\n1165#1:1724\n1221#1:1774\n1239#1:1816\n1262#1:1830\n1329#1:1853\n1366#1:1854\n1381#1:1855\n1413#1:1856\n1421#1:1859\n1430#1:1862\n1437#1:1863\n1444#1:1864\n1453#1:1865\n1459#1:1866\n1471#1:1867\n1171#1:1868\n348#1:1652,2\n1236#1:1812\n452#1:1657,6\n491#1:1667,6\n842#1:1691,6\n1166#1:1725,2\n1166#1:1727,4\n1166#1:1731,2\n1166#1:1733\n1166#1:1734\n1215#1:1746,3\n1215#1:1749,4\n1215#1:1753,2\n1215#1:1762,2\n1215#1:1764\n1215#1:1765\n1222#1:1775,3\n1222#1:1778,4\n1222#1:1782,2\n1222#1:1784\n1222#1:1785\n1231#1:1786,2\n1231#1:1788,6\n1231#1:1794\n1231#1:1795,2\n1231#1:1797,6\n1231#1:1803\n1236#1:1804,3\n1236#1:1807,4\n1236#1:1811\n1236#1:1813\n1236#1:1814\n1236#1:1815\n1244#1:1817,3\n1244#1:1820,4\n1244#1:1824,2\n1244#1:1826\n1244#1:1827\n1266#1:1831,3\n1266#1:1834,4\n1266#1:1838,2\n1266#1:1840\n1266#1:1841\n1273#1:1842,6\n495#1:1673,11\n1415#1:1857,2\n1423#1:1860,2\n1000#1:1698,9\n1000#1:1708,2\n1121#1:1717,5\n1198#1:1740,5\n1218#1:1771,3\n1218#1:1828\n1303#1:1848,5\n1215#1:1755,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u00bd\u00012\u00020\u0001:\n\u00bd\u0001\u00be\u0001\u00bf\u0001\u00c0\u0001\u00c1\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020_2\u0006\u0010c\u001a\u00020dH\u0002J\u0006\u0010e\u001a\u00020fJ\u000e\u0010g\u001a\u00020_H\u0086@\u00a2\u0006\u0002\u0010hJ\u000e\u0010i\u001a\u00020_H\u0082@\u00a2\u0006\u0002\u0010hJ\u0006\u0010j\u001a\u00020_J\u0008\u0010k\u001a\u00020_H\u0002J\u0006\u0010l\u001a\u00020_J*\u0010m\u001a\u00020_2\u0006\u0010a\u001a\u00020\u00072\u0011\u0010n\u001a\r\u0012\u0004\u0012\u00020_0o\u00a2\u0006\u0002\u0008pH\u0010\u00a2\u0006\u0004\u0008q\u0010rJ:\u0010s\u001a\u0002Ht\"\u0004\u0008\u0000\u0010t2\u0006\u0010a\u001a\u00020\u00072\u000e\u0010u\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010U2\u000c\u0010v\u001a\u0008\u0012\u0004\u0012\u0002Ht0oH\u0082\u0008\u00a2\u0006\u0002\u0010wJ\u0015\u0010x\u001a\u00020_2\u0006\u0010y\u001a\u00020\"H\u0010\u00a2\u0006\u0002\u0008zJ\u0010\u0010{\u001a\n\u0012\u0004\u0012\u00020_\u0018\u00010^H\u0002J\u0008\u0010|\u001a\u00020_H\u0002J\u0015\u0010}\u001a\u00020_2\u0006\u0010y\u001a\u00020\"H\u0010\u00a2\u0006\u0002\u0008~J\u0016\u0010\u007f\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u0080\u0001J\u0019\u0010\u0081\u0001\u001a\u00020_2\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0010\u00a2\u0006\u0003\u0008\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020_H\u0086@\u00a2\u0006\u0002\u0010hJ \u0010\u0086\u0001\u001a\u00020_2\u0006\u0010y\u001a\u00020\"2\u0007\u0010\u0087\u0001\u001a\u00020#H\u0010\u00a2\u0006\u0003\u0008\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u0004\u0018\u00010#2\u0006\u0010y\u001a\u00020\"H\u0010\u00a2\u0006\u0003\u0008\u008a\u0001J\u0007\u0010\u008b\u0001\u001a\u00020_J\u0011\u0010\u008c\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0002J.\u0010\u008d\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\r\u0010\u008e\u0001\u001a\u0008\u0012\u0004\u0012\u00020\"0\t2\u000e\u0010u\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010UH\u0002J#\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00072\u0006\u0010a\u001a\u00020\u00072\u000e\u0010u\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010UH\u0002J0\u0010\u0090\u0001\u001a\u00020_2\r\u0010\u0091\u0001\u001a\u00080\u0092\u0001j\u0003`\u0093\u00012\u000b\u0008\u0002\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00072\t\u0008\u0002\u0010\u0095\u0001\u001a\u00020\u0017H\u0002J\u001e\u0010\u0096\u0001\u001a\u000f\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020_0\u0097\u00012\u0006\u0010a\u001a\u00020\u0007H\u0002JV\u0010\u0098\u0001\u001a\u00020_2D\u0010v\u001a@\u0008\u0001\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0017\u0012\u00150\u009b\u0001\u00a2\u0006\u000f\u0008\u009c\u0001\u0012\n\u0008\u009d\u0001\u0012\u0005\u0008\u0008(\u009e\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020_0\u009f\u0001\u0012\u0006\u0012\u0004\u0018\u00010\'0\u0099\u0001\u00a2\u0006\u0003\u0008\u00a0\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00a1\u0001J\t\u0010\u00a2\u0001\u001a\u00020\u0017H\u0002J \u0010\u00a2\u0001\u001a\u00020_2\u0014\u0010\u00a3\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020_0\u0097\u0001H\u0082\u0008J\u0011\u0010\u00a4\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0002J\u001f\u0010\u00a5\u0001\u001a\u00020_2\u000e\u0010\u00a6\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a7\u00010*H\u0010\u00a2\u0006\u0003\u0008\u00a8\u0001J\u0017\u0010\u00a9\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00aa\u0001J\u0012\u0010\u00ab\u0001\u001a\u00020_2\u0007\u0010\u00ac\u0001\u001a\u00020QH\u0002J\u0011\u0010\u00ad\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0002J\u0017\u0010\u00ae\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00af\u0001J\u000b\u0010\u00b0\u0001\u001a\u0004\u0018\u000109H\u0002J\u0007\u0010\u00b1\u0001\u001a\u00020_J\t\u0010\u00b2\u0001\u001a\u00020_H\u0002J$\u0010\u00b3\u0001\u001a\u00020_2\u0008\u0010\u009e\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00b4\u0001\u001a\u00030\u00b5\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00b6\u0001J\u000f\u0010\u00b7\u0001\u001a\u00020_H\u0086@\u00a2\u0006\u0002\u0010hJ\u0018\u0010\u00b8\u0001\u001a\u00020_2\u0006\u0010L\u001a\u00020\u0003H\u0087@\u00a2\u0006\u0003\u0010\u00b9\u0001J\u0017\u0010\u00ba\u0001\u001a\u00020_2\u0006\u0010a\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00bb\u0001J.\u0010\u00bc\u0001\u001a\u000f\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020_0\u0097\u00012\u0006\u0010a\u001a\u00020\u00072\u000e\u0010u\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010UH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00178PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00178PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00178PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0019R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010%\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\'0&\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u00060!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u00020,8PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u000e\u0010/\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000c018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u000e\u00106\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u0019R\u0014\u0010>\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u0019R\u0014\u0010@\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u0019R\u0014\u0010B\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\u0019R\u0011\u0010D\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u0019R\u0014\u0010F\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010\u0019R\u000e\u0010H\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u0014\u0010L\u001a\u00020\u00038PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u00105R\u0012\u0010N\u001a\u00060OR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010R\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010\u0019R\u0014\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\'0UX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u000c0W8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[R\u000e\u0010\\\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010]\u001a\n\u0012\u0004\u0012\u00020_\u0018\u00010^X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c2\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/Recomposer;",
        "Landroidx/compose/runtime/CompositionContext;",
        "effectCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "_knownCompositions",
        "",
        "Landroidx/compose/runtime/ControlledComposition;",
        "_knownCompositionsCache",
        "",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Landroidx/compose/runtime/Recomposer$State;",
        "broadcastFrameClock",
        "Landroidx/compose/runtime/BroadcastFrameClock;",
        "<set-?>",
        "",
        "changeCount",
        "getChangeCount",
        "()J",
        "closeCause",
        "",
        "collectingCallByInformation",
        "",
        "getCollectingCallByInformation$runtime_release",
        "()Z",
        "collectingParameterInformation",
        "getCollectingParameterInformation$runtime_release",
        "collectingSourceInformation",
        "getCollectingSourceInformation$runtime_release",
        "compositionInvalidations",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "compositionValueStatesAvailable",
        "",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "Landroidx/compose/runtime/MovableContentState;",
        "compositionValuesAwaitingInsert",
        "compositionValuesRemoved",
        "Landroidx/compose/runtime/MovableContent;",
        "",
        "compositionsAwaitingApply",
        "compositionsRemoved",
        "",
        "compoundHashKey",
        "",
        "getCompoundHashKey$runtime_release",
        "()I",
        "concurrentCompositionsOutstanding",
        "currentState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "getEffectCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "effectJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "errorState",
        "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;",
        "failedCompositions",
        "frameClockPaused",
        "hasBroadcastFrameClockAwaiters",
        "getHasBroadcastFrameClockAwaiters",
        "hasBroadcastFrameClockAwaitersLocked",
        "getHasBroadcastFrameClockAwaitersLocked",
        "hasConcurrentFrameWorkLocked",
        "getHasConcurrentFrameWorkLocked",
        "hasFrameWorkLocked",
        "getHasFrameWorkLocked",
        "hasPendingWork",
        "getHasPendingWork",
        "hasSchedulingWork",
        "getHasSchedulingWork",
        "isClosed",
        "knownCompositions",
        "getKnownCompositions",
        "()Ljava/util/List;",
        "recomposeCoroutineContext",
        "getRecomposeCoroutineContext$runtime_release",
        "recomposerInfo",
        "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
        "runnerJob",
        "Lkotlinx/coroutines/Job;",
        "shouldKeepRecomposing",
        "getShouldKeepRecomposing",
        "snapshotInvalidations",
        "Landroidx/collection/MutableScatterSet;",
        "state",
        "Lkotlinx/coroutines/flow/Flow;",
        "getState$annotations",
        "()V",
        "getState",
        "()Lkotlinx/coroutines/flow/Flow;",
        "stateLock",
        "workContinuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "addKnownCompositionLocked",
        "composition",
        "applyAndCheck",
        "snapshot",
        "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
        "asRecomposerInfo",
        "Landroidx/compose/runtime/RecomposerInfo;",
        "awaitIdle",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitWorkAvailable",
        "cancel",
        "clearKnownCompositionsLocked",
        "close",
        "composeInitial",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "composeInitial$runtime_release",
        "(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V",
        "composing",
        "T",
        "modifiedValues",
        "block",
        "(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "deletedMovableContent",
        "reference",
        "deletedMovableContent$runtime_release",
        "deriveStateLocked",
        "discardUnusedValues",
        "insertMovableContent",
        "insertMovableContent$runtime_release",
        "invalidate",
        "invalidate$runtime_release",
        "invalidateScope",
        "scope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "invalidateScope$runtime_release",
        "join",
        "movableContentStateReleased",
        "data",
        "movableContentStateReleased$runtime_release",
        "movableContentStateResolve",
        "movableContentStateResolve$runtime_release",
        "pauseCompositionFrameClock",
        "performInitialMovableContentInserts",
        "performInsertValues",
        "references",
        "performRecompose",
        "processCompositionError",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "failedInitialComposition",
        "recoverable",
        "readObserverOf",
        "Lkotlin/Function1;",
        "recompositionRunner",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/ParameterName;",
        "name",
        "parentFrameClock",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordComposerModifications",
        "onEachInvalidComposition",
        "recordFailedCompositionLocked",
        "recordInspectionTable",
        "table",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "recordInspectionTable$runtime_release",
        "registerComposition",
        "registerComposition$runtime_release",
        "registerRunnerJob",
        "callingJob",
        "removeKnownCompositionLocked",
        "reportRemovedComposition",
        "reportRemovedComposition$runtime_release",
        "resetErrorState",
        "resumeCompositionFrameClock",
        "retryFailedCompositions",
        "runFrameLoop",
        "frameSignal",
        "Landroidx/compose/runtime/ProduceFrameSignal;",
        "(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runRecomposeAndApplyChanges",
        "runRecomposeConcurrentlyAndApplyChanges",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregisterComposition",
        "unregisterComposition$runtime_release",
        "writeObserverOf",
        "Companion",
        "HotReloadable",
        "RecomposerErrorState",
        "RecomposerInfoImpl",
        "State",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/Recomposer$Companion;

.field private static final _hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final _runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _knownCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private _knownCompositionsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

.field private changeCount:J

.field private closeCause:Ljava/lang/Throwable;

.field private final compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValueStatesAvailable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValuesAwaitingInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValuesRemoved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private final compositionsAwaitingApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private compositionsRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private concurrentCompositionsOutstanding:I

.field private final effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final effectJob:Lkotlinx/coroutines/CompletableJob;

.field private errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

.field private failedCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private frameClockPaused:Z

.field private isClosed:Z

.field private final recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

.field private runnerJob:Lkotlinx/coroutines/Job;

.field private snapshotInvalidations:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;

.field private workContinuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/Recomposer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/Recomposer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/Recomposer;->$stable:I

    .line 1486
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentSetOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 1488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 6
    .param p1, "effectCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;

    .line 136
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    .line 145
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock;

    new-instance v1, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 217
    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 218
    const/4 v0, 0x0

    .line 1647
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1648
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 1649
    .local v2, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v1, [Landroidx/compose/runtime/ControlledComposition;

    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1647
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 218
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 234
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 244
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$effectJob_u24lambda_u241":Lkotlinx/coroutines/CompletableJob;
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$a$-apply-Recomposer$effectJob$1":I
    new-instance v3, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-direct {v3, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/CompletableJob;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 282
    nop

    .line 244
    .end local v1    # "$this$effectJob_u24lambda_u241":Lkotlinx/coroutines/CompletableJob;
    .end local v2    # "$i$a$-apply-Recomposer$effectJob$1":I
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    .line 288
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 427
    new-instance v0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;-><init>(Landroidx/compose/runtime/Recomposer;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 134
    return-void
.end method

.method public static final synthetic access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 132
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->awaitWorkAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$discardUnusedValues(Landroidx/compose/runtime/Recomposer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->discardUnusedValues()V

    return-void
.end method

.method public static final synthetic access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    return-object v0
.end method

.method public static final synthetic access$getCloseCause$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final synthetic access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public static final synthetic access$getCompositionValuesAwaitingInsert$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCompositionsAwaitingApply$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    return v0
.end method

.method public static final synthetic access$getErrorState$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    return-object v0
.end method

.method public static final synthetic access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasConcurrentFrameWorkLocked()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    return-object v0
.end method

.method public static final synthetic access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public static final synthetic access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getShouldKeepRecomposing()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    return-object v0
.end method

.method public static final synthetic access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getWorkContinuation$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-object v0
.end method

.method public static final synthetic access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 132
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    .line 132
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$isClosed$p(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    return v0
.end method

.method public static final synthetic access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "references"    # Ljava/util/List;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;

    .line 132
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;

    .line 132
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recompositionRunner(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 132
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$recordFailedCompositionLocked(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 132
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public static final synthetic access$registerRunnerJob(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "callingJob"    # Lkotlinx/coroutines/Job;

    .line 132
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->registerRunnerJob(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic access$resetErrorState(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$retryFailedCompositions(Landroidx/compose/runtime/Recomposer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 132
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->retryFailedCompositions()V

    return-void
.end method

.method public static final synthetic access$runFrameLoop(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "parentFrameClock"    # Landroidx/compose/runtime/MonotonicFrameClock;
    .param p2, "frameSignal"    # Landroidx/compose/runtime/ProduceFrameSignal;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # J

    .line 132
    iput-wide p1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    return-void
.end method

.method public static final synthetic access$setCloseCause$p(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Ljava/lang/Throwable;

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    return-void
.end method

.method public static final synthetic access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Ljava/util/Set;

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # I

    .line 132
    iput p1, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    return-void
.end method

.method public static final synthetic access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Landroidx/collection/MutableScatterSet;

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 132
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method

.method private final addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 807
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 809
    return-void
.end method

.method private final applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1310
    nop

    .line 1311
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v0

    .line 1312
    .local v0, "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1320
    .end local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 1321
    nop

    .line 1322
    return-void

    .line 1313
    .restart local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1314
    const-string v2, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    .end local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .restart local p1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    throw v0
.end method

.method private final awaitWorkAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 996
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1000
    const/4 v0, 0x0

    .line 1698
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 1699
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1705
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1706
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "co":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 1008
    .local v5, "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    nop

    .line 1001
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1707
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v8, 0x0

    .line 1002
    .local v8, "$i$a$-synchronized-Recomposer$awaitWorkAvailable$2$1":I
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1003
    move-object v9, v4

    goto :goto_0

    .line 1005
    :cond_0
    invoke-static {p0, v4}, Landroidx/compose/runtime/Recomposer;->access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    const/4 v9, 0x0

    .line 1002
    :goto_0
    nop

    .line 1707
    .end local v8    # "$i$a$-synchronized-Recomposer$awaitWorkAvailable$2$1":I
    monitor-exit v6

    .line 1001
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    nop

    .line 1008
    if-eqz v9, :cond_1

    .line 1001
    check-cast v9, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1008
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1009
    :cond_1
    nop

    .line 1706
    .end local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    nop

    .line 1708
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 1698
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    .line 1709
    :cond_3
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1011
    return-object v0

    .line 1707
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    .restart local v6    # "lock$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    :catchall_0
    move-exception v8

    monitor-exit v6

    throw v8

    .line 1011
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final clearKnownCompositionsLocked()V
    .locals 1

    .line 797
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 798
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 799
    return-void
.end method

.method private final composing(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1299
    .local v0, "$i$f$composing":I
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1300
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 1299
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v1

    .line 1302
    .local v1, "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1303
    const/4 v2, 0x1

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v4, 0x0

    .line 1848
    .local v4, "$i$f$enter":I
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1849
    .local v5, "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1850
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 1852
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1850
    nop

    .line 1852
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 1305
    invoke-direct {p0, v1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1303
    return-object v6

    .line 1852
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "$i$f$enter":I
    .restart local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v0    # "$i$f$composing":I
    .end local v1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1305
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "$i$f$composing":I
    .restart local v1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private final deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Recomposer$State;

    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_1

    .line 304
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->clearKnownCompositionsLocked()V

    .line 305
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 306
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 307
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 310
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_0

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/CancellableContinuation$DefaultImpls;->cancel$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 311
    :cond_0
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 312
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 313
    return-object v3

    .line 316
    :cond_1
    nop

    .line 317
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 320
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_4

    .line 321
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 322
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 323
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 324
    :cond_3
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 326
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 327
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 328
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 329
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    if-gtz v0, :cond_6

    .line 331
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 332
    :cond_5
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 331
    :cond_6
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 316
    :goto_1
    nop

    .line 335
    .local v0, "newState":Landroidx/compose/runtime/Recomposer$State;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 336
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    if-ne v0, v1, :cond_7

    .line 337
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    move-object v2, v1

    .local v2, "it":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 338
    .local v4, "$i$a$-also-Recomposer$deriveStateLocked$1":I
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 339
    nop

    .line 337
    .end local v2    # "it":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-also-Recomposer$deriveStateLocked$1":I
    move-object v3, v1

    goto :goto_2

    .line 340
    :cond_7
    nop

    .line 336
    :goto_2
    return-object v3
.end method

.method private final discardUnusedValues()V
    .locals 20

    .line 1262
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1830
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 1263
    .local v0, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1264
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 1265
    .local v4, "references":Ljava/util/List;
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1266
    move-object v5, v4

    .local v5, "$this$fastMap$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1831
    .local v6, "$i$f$fastMap":I
    nop

    .line 1832
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1833
    .local v7, "target$iv":Ljava/util/ArrayList;
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1834
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1835
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_0

    .line 1836
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1837
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1838
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v15, v7

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 v17, v16

    .local v17, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/16 v16, 0x0

    .line 1267
    .local v16, "$i$a$-fastMap-Recomposer$discardUnusedValues$unusedValues$1$unusedValues$1":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .local v18, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .local v3, "it":Landroidx/compose/runtime/MovableContentStateReference;
    .local v19, "$i$f$synchronized":I
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1838
    .end local v3    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v16    # "$i$a$-fastMap-Recomposer$discardUnusedValues$unusedValues$1$unusedValues$1":I
    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1839
    nop

    .line 1837
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1835
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v18

    move/from16 v3, v19

    goto :goto_0

    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v19    # "$i$f$synchronized":I
    .restart local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .local v3, "$i$f$synchronized":I
    :cond_0
    move/from16 v18, v0

    move/from16 v19, v3

    .line 1840
    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v3    # "$i$f$synchronized":I
    .end local v10    # "index$iv$iv":I
    .restart local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v19    # "$i$f$synchronized":I
    nop

    .line 1841
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 1266
    .end local v5    # "$this$fastMap$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastMap":I
    .end local v7    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 1269
    .local v0, "unusedValues":Ljava/util/List;
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1270
    nop

    .end local v0    # "unusedValues":Ljava/util/List;
    .end local v4    # "references":Ljava/util/List;
    goto :goto_1

    .line 1271
    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v19    # "$i$f$synchronized":I
    .local v0, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v3    # "$i$f$synchronized":I
    :cond_1
    move/from16 v18, v0

    move/from16 v19, v3

    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v3    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v19    # "$i$f$synchronized":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    :goto_1
    nop

    .line 1830
    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    monitor-exit v2

    .line 1262
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 1273
    .local v0, "unusedValues":Ljava/util/List;
    move-object v2, v0

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1842
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1843
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_3

    .line 1844
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1845
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    const/4 v8, 0x0

    .line 1273
    .local v8, "$i$a$-fastForEach-Recomposer$discardUnusedValues$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/MovableContentStateReference;

    .local v9, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/MovableContentState;

    .line 1274
    .local v7, "state":Landroidx/compose/runtime/MovableContentState;
    if-eqz v7, :cond_2

    .line 1275
    invoke-virtual {v9}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v10

    invoke-interface {v10, v7}, Landroidx/compose/runtime/ControlledComposition;->disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V

    .line 1277
    :cond_2
    nop

    .line 1845
    .end local v7    # "state":Landroidx/compose/runtime/MovableContentState;
    .end local v8    # "$i$a$-fastForEach-Recomposer$discardUnusedValues$1":I
    .end local v9    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    nop

    .line 1843
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1847
    .end local v4    # "index$iv":I
    :cond_3
    nop

    .line 1278
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    return-void

    .line 1830
    .end local v0    # "unusedValues":Ljava/util/List;
    .local v2, "lock$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v19    # "$i$f$synchronized":I
    .local v3, "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$synchronized":I
    :goto_3
    monitor-exit v2

    throw v0
.end method

.method private final getHasBroadcastFrameClockAwaiters()Z
    .locals 4

    .line 297
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1650
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 297
    .local v2, "$i$a$-synchronized-Recomposer$hasBroadcastFrameClockAwaiters$1":I
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    .end local v2    # "$i$a$-synchronized-Recomposer$hasBroadcastFrameClockAwaiters$1":I
    monitor-exit v0

    .line 297
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1650
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final getHasBroadcastFrameClockAwaitersLocked()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->getHasAwaiters()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getHasConcurrentFrameWorkLocked()Z
    .locals 1

    .line 1341
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final getHasFrameWorkLocked()Z
    .locals 1

    .line 1338
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final getHasSchedulingWork()Z
    .locals 4

    .line 989
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1697
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 990
    .local v2, "$i$a$-synchronized-Recomposer$hasSchedulingWork$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 991
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 992
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 990
    :goto_1
    nop

    .line 1697
    .end local v2    # "$i$a$-synchronized-Recomposer$hasSchedulingWork$1":I
    monitor-exit v0

    .line 993
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1697
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final getKnownCompositions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .local v0, "$this$_get_knownCompositions__u24lambda_u240":Landroidx/compose/runtime/Recomposer;
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-run-Recomposer$knownCompositions$1":I
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 213
    .local v2, "compositions":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    .line 214
    .local v3, "newCache":Ljava/util/List;
    :goto_0
    iput-object v3, v0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 215
    nop

    .line 211
    .end local v0    # "$this$_get_knownCompositions__u24lambda_u240":Landroidx/compose/runtime/Recomposer;
    .end local v1    # "$i$a$-run-Recomposer$knownCompositions$1":I
    .end local v2    # "compositions":Ljava/util/List;
    .end local v3    # "newCache":Ljava/util/List;
    move-object v0, v3

    .line 216
    :cond_1
    return-object v0
.end method

.method private final getShouldKeepRecomposing()Z
    .locals 8

    .line 347
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1651
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 347
    .local v2, "$i$a$-synchronized-Recomposer$shouldKeepRecomposing$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    .end local v2    # "$i$a$-synchronized-Recomposer$shouldKeepRecomposing$1":I
    monitor-exit v0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    const/4 v0, 0x1

    if-eqz v3, :cond_3

    .line 348
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v1}, Lkotlinx/coroutines/CompletableJob;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v1

    .local v1, "$this$any$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 1652
    .local v2, "$i$f$any":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Job;

    .local v6, "it":Lkotlinx/coroutines/Job;
    const/4 v7, 0x0

    .line 348
    .local v7, "$i$a$-any-Recomposer$shouldKeepRecomposing$2":I
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v6

    .line 1652
    .end local v6    # "it":Lkotlinx/coroutines/Job;
    .end local v7    # "$i$a$-any-Recomposer$shouldKeepRecomposing$2":I
    if-eqz v6, :cond_0

    move v1, v0

    goto :goto_0

    .line 1653
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    move v1, v5

    .end local v1    # "$this$any$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$any":I
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 348
    :goto_2
    return v0

    .line 1651
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by currentState as a StateFlow"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "currentState"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private final performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 17
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1165
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1724
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 1166
    .local v0, "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .local v5, "$this$fastAny$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1725
    .local v6, "$i$f$fastAny":I
    nop

    .line 1726
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1727
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1728
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_1

    .line 1729
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1730
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1731
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/runtime/MovableContentStateReference;

    .local v14, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/4 v15, 0x0

    .line 1166
    .local v15, "$i$a$-fastAny-Recomposer$performInitialMovableContentInserts$1$1":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    .local v16, "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    invoke-virtual {v14}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    .end local v14    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v15    # "$i$a$-fastAny-Recomposer$performInitialMovableContentInserts$1$1":I
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 1732
    :cond_0
    nop

    .line 1730
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    nop

    .line 1728
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v16

    goto :goto_0

    .end local v16    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    .restart local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :cond_1
    move/from16 v16, v0

    .line 1733
    .end local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    nop

    .line 1734
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 1166
    .end local v5    # "$this$fastAny$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastAny":I
    :goto_1
    if-nez v0, :cond_2

    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .end local v16    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    monitor-exit v3

    return-void

    .line 1167
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v16    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :cond_2
    nop

    .end local v16    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    monitor-exit v3

    .line 1168
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1182
    .local v0, "toInsert":Ljava/util/List;
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 1183
    :goto_2
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1184
    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    .line 1185
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_2

    .line 1187
    :cond_3
    return-void

    .line 1724
    .end local v0    # "toInsert":Ljava/util/List;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static final performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 6
    .param p0, "toInsert"    # Ljava/util/List;
    .param p1, "this$0"    # Landroidx/compose/runtime/Recomposer;
    .param p2, "$composition"    # Landroidx/compose/runtime/ControlledComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1170
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1171
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1868
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1172
    .local v2, "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$fillToInsert$1":I
    :try_start_0
    iget-object v3, p1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1173
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 1175
    .local v4, "value":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1176
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .end local v4    # "value":Landroidx/compose/runtime/MovableContentStateReference;
    goto :goto_0

    .line 1180
    :cond_1
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$fillToInsert$1":I
    .end local v3    # "iterator":Ljava/util/Iterator;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    monitor-exit v0

    .line 1181
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1868
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;
    .locals 30
    .param p1, "references"    # Ljava/util/List;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1215
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .local v0, "$this$fastGroupBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1746
    .local v2, "$i$f$fastGroupBy":I
    nop

    .line 1747
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1748
    .local v3, "destination$iv":Ljava/util/HashMap;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1749
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1750
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1751
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1752
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1753
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastGroupBy$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/MovableContentStateReference;

    .local v11, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/4 v12, 0x0

    .line 1215
    .local v12, "$i$a$-fastGroupBy-Recomposer$performInsertValues$tasks$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v11

    .line 1753
    .end local v11    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v12    # "$i$a$-fastGroupBy-Recomposer$performInsertValues$tasks$1":I
    nop

    .line 1754
    .local v11, "key$iv":Ljava/lang/Object;
    move-object v12, v3

    check-cast v12, Ljava/util/Map;

    .local v12, "$this$getOrPut$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 1755
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1756
    .local v14, "value$iv$iv":Ljava/lang/Object;
    if-nez v14, :cond_0

    .line 1757
    const/4 v15, 0x0

    .line 1754
    .local v15, "$i$a$-getOrPut-ListUtilsKt$fastGroupBy$2$list$1$iv":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    .end local v15    # "$i$a$-getOrPut-ListUtilsKt$fastGroupBy$2$list$1$iv":I
    move-object/from16 v15, v16

    .line 1758
    .local v15, "answer$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    nop

    .end local v15    # "answer$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1761
    :cond_0
    move-object v15, v14

    .line 1756
    :goto_1
    nop

    .line 1754
    .end local v12    # "$this$getOrPut$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv$iv":Ljava/lang/Object;
    move-object v12, v15

    check-cast v12, Ljava/util/ArrayList;

    .line 1762
    .local v12, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    nop

    .line 1752
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastGroupBy$2$iv":I
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "list$iv":Ljava/util/ArrayList;
    nop

    .line 1750
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1764
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1765
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    .line 1215
    .end local v0    # "$this$fastGroupBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastGroupBy":I
    .end local v3    # "destination$iv":Ljava/util/HashMap;
    move-object v2, v0

    .line 1216
    .local v2, "tasks":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .local v4, "composition":Landroidx/compose/runtime/ControlledComposition;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1217
    .local v3, "refs":Ljava/util/List;
    invoke-interface {v4}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 1218
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v7, 0x0

    .line 1766
    .local v7, "$i$f$composing":I
    sget-object v8, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1767
    invoke-direct {v5, v4}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-direct {v5, v4, v10}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v11

    .line 1766
    invoke-virtual {v8, v9, v11}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v8

    .line 1769
    .local v8, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1770
    :try_start_0
    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v11, 0x0

    .line 1771
    .local v11, "$i$f$enter":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1772
    .local v12, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1773
    const/4 v13, 0x0

    .line 1221
    .local v13, "$i$a$-composing-Recomposer$performInsertValues$1":I
    :try_start_1
    iget-object v14, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v14, "lock$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1774
    .local v15, "$i$f$synchronized":I
    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/16 v16, 0x0

    .line 1222
    .local v16, "$i$a$-synchronized-Recomposer$performInsertValues$1$pairs$1":I
    move-object/from16 v17, v3

    .local v17, "$this$fastMap$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 1775
    .local v18, "$i$f$fastMap":I
    nop

    .line 1776
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v0, v6

    .line 1777
    .local v0, "target$iv":Ljava/util/ArrayList;
    move-object/from16 v6, v17

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 1778
    .local v20, "$i$f$fastForEach":I
    nop

    .line 1779
    const/16 v21, 0x0

    move-object/from16 v22, v3

    .end local v3    # "refs":Ljava/util/List;
    .local v21, "index$iv$iv":I
    .local v22, "refs":Ljava/util/List;
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v23, v7

    move/from16 v7, v21

    .end local v21    # "index$iv$iv":I
    .local v7, "index$iv$iv":I
    .local v23, "$i$f$composing":I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 1780
    :try_start_4
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1781
    .local v21, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v21

    .local v24, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1782
    .local v25, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v26, v3

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v27, v24

    check-cast v27, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 v28, v27

    .local v28, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    const/16 v27, 0x0

    .line 1223
    .local v27, "$i$a$-fastMap-Recomposer$performInsertValues$1$pairs$1$1":I
    nop

    .line 1224
    move-object/from16 v29, v6

    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v29, "$this$fastForEach$iv$iv":Ljava/util/List;
    iget-object v6, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v10

    invoke-static {v6, v10}, Landroidx/compose/runtime/RecomposerKt;->removeLastMultiValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1223
    move-object/from16 v10, v28

    .end local v28    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .local v10, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-static {v10, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 1782
    .end local v10    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v27    # "$i$a$-fastMap-Recomposer$performInsertValues$1$pairs$1$1":I
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1783
    nop

    .line 1781
    .end local v24    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1779
    .end local v21    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, p2

    move/from16 v3, v26

    move-object/from16 v6, v29

    goto :goto_3

    .end local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_2
    move-object/from16 v29, v6

    .line 1784
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "index$iv$iv":I
    .restart local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 1785
    .end local v20    # "$i$f$fastForEach":I
    .end local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v3, v0

    check-cast v3, Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1222
    .end local v0    # "target$iv":Ljava/util/ArrayList;
    .end local v17    # "$this$fastMap$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastMap":I
    nop

    .line 1774
    .end local v16    # "$i$a$-synchronized-Recomposer$performInsertValues$1$pairs$1":I
    :try_start_5
    monitor-exit v14

    .line 1221
    .end local v14    # "lock$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$synchronized":I
    nop

    .line 1230
    .local v3, "pairs":Ljava/util/List;
    nop

    .line 1231
    move-object v0, v3

    .local v0, "$this$fastAll$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1786
    .local v6, "$i$f$fastAll":I
    nop

    .line 1787
    move-object v7, v0

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1788
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1789
    const/4 v14, 0x0

    .local v14, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    :goto_4
    const/16 v16, 0x0

    if-ge v14, v15, :cond_5

    .line 1790
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1791
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1787
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object/from16 v21, v18

    check-cast v21, Lkotlin/Pair;

    .local v21, "it":Lkotlin/Pair;
    const/16 v24, 0x0

    .line 1231
    .local v24, "$i$a$-fastAll-Recomposer$performInsertValues$1$toInsert$1":I
    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v25

    if-nez v25, :cond_3

    const/16 v21, 0x1

    goto :goto_5

    :cond_3
    move/from16 v21, v16

    .line 1787
    .end local v21    # "it":Lkotlin/Pair;
    .end local v24    # "$i$a$-fastAll-Recomposer$performInsertValues$1$toInsert$1":I
    :goto_5
    if-nez v21, :cond_4

    move/from16 v0, v16

    goto :goto_6

    .line 1791
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_4
    nop

    .line 1789
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1793
    .end local v14    # "index$iv$iv":I
    :cond_5
    nop

    .line 1794
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v0, 0x1

    .line 1231
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastAll":I
    :goto_6
    if-nez v0, :cond_10

    move-object v0, v3

    .restart local v0    # "$this$fastAll$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1795
    .restart local v6    # "$i$f$fastAll":I
    nop

    .line 1796
    move-object v7, v0

    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1797
    .restart local v10    # "$i$f$fastForEach":I
    nop

    .line 1798
    const/4 v14, 0x0

    .restart local v14    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    :goto_7
    if-ge v14, v15, :cond_8

    .line 1799
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1800
    .restart local v17    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .restart local v18    # "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1796
    .restart local v20    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object/from16 v21, v18

    check-cast v21, Lkotlin/Pair;

    .restart local v21    # "it":Lkotlin/Pair;
    const/16 v24, 0x0

    .line 1231
    .local v24, "$i$a$-fastAll-Recomposer$performInsertValues$1$toInsert$2":I
    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_6

    const/16 v21, 0x1

    goto :goto_8

    :cond_6
    move/from16 v21, v16

    .line 1796
    .end local v21    # "it":Lkotlin/Pair;
    .end local v24    # "$i$a$-fastAll-Recomposer$performInsertValues$1$toInsert$2":I
    :goto_8
    if-nez v21, :cond_7

    move/from16 v0, v16

    goto :goto_9

    .line 1800
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_7
    nop

    .line 1798
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1802
    .end local v14    # "index$iv$iv":I
    :cond_8
    nop

    .line 1803
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v0, 0x1

    .line 1231
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastAll":I
    :goto_9
    if-eqz v0, :cond_9

    move-object/from16 v21, v3

    goto/16 :goto_10

    .line 1236
    :cond_9
    move-object v0, v3

    .local v0, "$this$fastMapNotNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1804
    .local v6, "$i$f$fastMapNotNull":I
    nop

    .line 1805
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1806
    .local v7, "target$iv":Ljava/util/ArrayList;
    move-object v10, v0

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 1807
    .local v14, "$i$f$fastForEach":I
    nop

    .line 1808
    const/4 v15, 0x0

    move-object/from16 v17, v0

    .end local v0    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .local v15, "index$iv$iv":I
    .local v17, "$this$fastMapNotNull$iv":Ljava/util/List;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v15, v0, :cond_c

    .line 1809
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1810
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v18

    .local v20, "e$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1811
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    move-object/from16 v24, v20

    check-cast v24, Lkotlin/Pair;

    .local v24, "item":Lkotlin/Pair;
    const/16 v25, 0x0

    .line 1237
    .local v25, "$i$a$-fastMapNotNull-Recomposer$performInsertValues$1$toInsert$toReturn$1":I
    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_a

    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/compose/runtime/MovableContentStateReference;

    goto :goto_b

    :cond_a
    const/16 v26, 0x0

    .line 1811
    .end local v24    # "item":Lkotlin/Pair;
    .end local v25    # "$i$a$-fastMapNotNull-Recomposer$performInsertValues$1$toInsert$toReturn$1":I
    :goto_b
    if-eqz v26, :cond_b

    move-object/from16 v24, v26

    .line 1812
    .local v24, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1811
    .local v25, "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    move/from16 v26, v0

    move-object v0, v7

    check-cast v0, Ljava/util/Collection;

    move/from16 v27, v6

    move-object/from16 v6, v24

    .end local v24    # "it$iv":Ljava/lang/Object;
    .local v6, "it$iv":Ljava/lang/Object;
    .local v27, "$i$f$fastMapNotNull":I
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    goto :goto_c

    .end local v27    # "$i$f$fastMapNotNull":I
    .local v6, "$i$f$fastMapNotNull":I
    :cond_b
    move/from16 v26, v0

    move/from16 v27, v6

    .line 1813
    .end local v6    # "$i$f$fastMapNotNull":I
    .restart local v27    # "$i$f$fastMapNotNull":I
    :goto_c
    nop

    .line 1810
    .end local v20    # "e$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    nop

    .line 1808
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v26

    move/from16 v6, v27

    goto :goto_a

    .end local v27    # "$i$f$fastMapNotNull":I
    .restart local v6    # "$i$f$fastMapNotNull":I
    :cond_c
    move/from16 v27, v6

    .line 1814
    .end local v6    # "$i$f$fastMapNotNull":I
    .end local v15    # "index$iv$iv":I
    .restart local v27    # "$i$f$fastMapNotNull":I
    nop

    .line 1815
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEach":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 1236
    .end local v7    # "target$iv":Ljava/util/ArrayList;
    .end local v17    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .end local v27    # "$i$f$fastMapNotNull":I
    move-object v6, v0

    .line 1239
    .local v6, "toReturn":Ljava/util/List;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    move-object v7, v0

    .local v7, "lock$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1816
    .local v10, "$i$f$synchronized":I
    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v0, 0x0

    .line 1240
    .local v0, "$i$a$-synchronized-Recomposer$performInsertValues$1$toInsert$3":I
    :try_start_6
    iget-object v14, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    check-cast v14, Ljava/util/Collection;

    move-object v15, v6

    check-cast v15, Ljava/lang/Iterable;

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1241
    nop

    .end local v0    # "$i$a$-synchronized-Recomposer$performInsertValues$1$toInsert$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1816
    :try_start_7
    monitor-exit v7

    .line 1244
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    move-object v0, v3

    .local v0, "$this$fastFilterIndexed$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1817
    .local v7, "$i$f$fastFilterIndexed":I
    nop

    .line 1818
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1819
    .local v10, "target$iv":Ljava/util/ArrayList;
    move-object v14, v0

    .local v14, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 1820
    .local v15, "$i$f$fastForEachIndexed":I
    nop

    .line 1821
    const/16 v17, 0x0

    move-object/from16 v18, v0

    .end local v0    # "$this$fastFilterIndexed$iv":Ljava/util/List;
    .local v17, "index$iv$iv":I
    .local v18, "$this$fastFilterIndexed$iv":Ljava/util/List;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v17

    .end local v17    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    :goto_d
    if-ge v1, v0, :cond_f

    .line 1822
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1823
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move/from16 v20, v1

    .local v20, "index$iv":I
    move-object/from16 v21, v17

    .local v21, "e$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1824
    .local v24, "$i$a$-fastForEachIndexed-ListUtilsKt$fastFilterIndexed$2$iv":I
    move/from16 v25, v0

    move-object/from16 v0, v21

    .end local v21    # "e$iv":Ljava/lang/Object;
    .local v0, "e$iv":Ljava/lang/Object;
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/Pair;

    .local v21, "item":Lkotlin/Pair;
    const/16 v26, 0x0

    .line 1244
    .local v26, "$i$a$-fastFilterIndexed-Recomposer$performInsertValues$1$toInsert$4":I
    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_d

    const/16 v21, 0x1

    goto :goto_e

    :cond_d
    move/from16 v21, v16

    .line 1824
    .end local v21    # "item":Lkotlin/Pair;
    .end local v26    # "$i$a$-fastFilterIndexed-Recomposer$performInsertValues$1$toInsert$4":I
    :goto_e
    if-eqz v21, :cond_e

    move-object/from16 v21, v3

    .end local v3    # "pairs":Ljava/util/List;
    .local v21, "pairs":Ljava/util/List;
    move-object v3, v10

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v21    # "pairs":Ljava/util/List;
    .restart local v3    # "pairs":Ljava/util/List;
    :cond_e
    move-object/from16 v21, v3

    .line 1825
    .end local v3    # "pairs":Ljava/util/List;
    .restart local v21    # "pairs":Ljava/util/List;
    :goto_f
    nop

    .line 1823
    .end local v0    # "e$iv":Ljava/lang/Object;
    .end local v20    # "index$iv":I
    .end local v24    # "$i$a$-fastForEachIndexed-ListUtilsKt$fastFilterIndexed$2$iv":I
    nop

    .line 1821
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v21

    move/from16 v0, v25

    goto :goto_d

    .end local v21    # "pairs":Ljava/util/List;
    .restart local v3    # "pairs":Ljava/util/List;
    :cond_f
    move-object/from16 v21, v3

    .line 1826
    .end local v1    # "index$iv$iv":I
    .end local v3    # "pairs":Ljava/util/List;
    .restart local v21    # "pairs":Ljava/util/List;
    nop

    .line 1827
    .end local v14    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v15    # "$i$f$fastForEachIndexed":I
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    goto :goto_11

    .line 1816
    .end local v18    # "$this$fastFilterIndexed$iv":Ljava/util/List;
    .end local v21    # "pairs":Ljava/util/List;
    .restart local v3    # "pairs":Ljava/util/List;
    .local v7, "lock$iv":Ljava/lang/Object;
    .local v10, "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    move-object/from16 v21, v3

    .end local v3    # "pairs":Ljava/util/List;
    .restart local v21    # "pairs":Ljava/util/List;
    monitor-exit v7

    .end local v2    # "tasks":Ljava/util/Map;
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .end local p1    # "references":Ljava/util/List;
    .end local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    throw v0

    .line 1231
    .end local v6    # "toReturn":Ljava/util/List;
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    .end local v21    # "pairs":Ljava/util/List;
    .restart local v2    # "tasks":Ljava/util/Map;
    .restart local v3    # "pairs":Ljava/util/List;
    .restart local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "$i$f$enter":I
    .restart local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    .restart local p1    # "references":Ljava/util/List;
    .restart local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    :cond_10
    move-object/from16 v21, v3

    .line 1232
    .end local v3    # "pairs":Ljava/util/List;
    .restart local v21    # "pairs":Ljava/util/List;
    :goto_10
    move-object/from16 v0, v21

    .line 1230
    :goto_11
    nop

    .line 1255
    .local v0, "toInsert":Ljava/util/List;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/ControlledComposition;->insertMovableContent(Ljava/util/List;)V

    .line 1256
    nop

    .end local v0    # "toInsert":Ljava/util/List;
    .end local v13    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    .end local v21    # "pairs":Ljava/util/List;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1773
    nop

    .line 1828
    :try_start_8
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1773
    nop

    .line 1829
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-direct {v5, v8}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 1770
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    goto/16 :goto_2

    .line 1774
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "$i$f$enter":I
    .restart local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v13    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    .local v14, "lock$iv":Ljava/lang/Object;
    .local v15, "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    goto :goto_12

    .end local v23    # "$i$f$composing":I
    .local v7, "$i$f$composing":I
    :catchall_2
    move-exception v0

    move/from16 v23, v7

    .end local v7    # "$i$f$composing":I
    .restart local v23    # "$i$f$composing":I
    goto :goto_12

    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .local v3, "refs":Ljava/util/List;
    .restart local v7    # "$i$f$composing":I
    :catchall_3
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v7

    .end local v3    # "refs":Ljava/util/List;
    .end local v7    # "$i$f$composing":I
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    :goto_12
    :try_start_9
    monitor-exit v14

    .end local v2    # "tasks":Ljava/util/Map;
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .end local p1    # "references":Ljava/util/List;
    .end local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1828
    .end local v13    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    .end local v14    # "lock$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$synchronized":I
    .restart local v2    # "tasks":Ljava/util/Map;
    .restart local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "$i$f$enter":I
    .restart local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    .restart local p1    # "references":Ljava/util/List;
    .restart local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    :catchall_4
    move-exception v0

    goto :goto_13

    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .restart local v3    # "refs":Ljava/util/List;
    .restart local v7    # "$i$f$composing":I
    :catchall_5
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v7

    .end local v3    # "refs":Ljava/util/List;
    .end local v7    # "$i$f$composing":I
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    :goto_13
    :try_start_a
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "tasks":Ljava/util/Map;
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .end local p1    # "references":Ljava/util/List;
    .end local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1829
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "tasks":Ljava/util/Map;
    .restart local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    .restart local p1    # "references":Ljava/util/List;
    .restart local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    :catchall_6
    move-exception v0

    goto :goto_14

    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    .restart local v3    # "refs":Ljava/util/List;
    .restart local v7    # "$i$f$composing":I
    :catchall_7
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v7

    .end local v3    # "refs":Ljava/util/List;
    .end local v7    # "$i$f$composing":I
    .restart local v22    # "refs":Ljava/util/List;
    .restart local v23    # "$i$f$composing":I
    :goto_14
    invoke-direct {v5, v8}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    throw v0

    .line 1258
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v8    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v22    # "refs":Ljava/util/List;
    .end local v23    # "$i$f$composing":I
    :cond_11
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 11
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/ControlledComposition;"
        }
    .end annotation

    .line 1193
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1194
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1195
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_4

    .line 1197
    :cond_1
    nop

    .line 1198
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v4, 0x0

    .line 1735
    .local v4, "$i$f$composing":I
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1736
    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 1735
    invoke-virtual {v5, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5

    .line 1738
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1739
    :try_start_0
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1740
    .local v7, "$i$f$enter":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1741
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1742
    const/4 v9, 0x0

    .line 1199
    .local v9, "$i$a$-composing-Recomposer$performRecompose$1":I
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v10

    if-ne v10, v2, :cond_2

    goto :goto_1

    .line 1744
    .end local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1199
    .restart local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 1202
    new-instance v2, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;

    invoke-direct {v2, p2, p1}, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;-><init>(Landroidx/collection/MutableScatterSet;Landroidx/compose/runtime/ControlledComposition;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/ControlledComposition;->prepareCompose(Lkotlin/jvm/functions/Function0;)V

    .line 1206
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->recompose()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1742
    .end local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    nop

    .line 1744
    :try_start_2
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1742
    nop

    .line 1745
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-direct {v0, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 1739
    nop

    .line 1198
    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    if-eqz v2, :cond_4

    .line 1208
    move-object v1, p1

    goto :goto_2

    :cond_4
    nop

    .line 1197
    :goto_2
    return-object v1

    .line 1744
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v4    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :goto_3
    :try_start_3
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1745
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v4    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    :catchall_1
    move-exception v1

    invoke-direct {v0, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    throw v1

    .line 1195
    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :cond_5
    :goto_4
    return-object v1
.end method

.method private final processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "failedInitialComposition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p3, "recoverable"    # Z

    .line 750
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/compose/runtime/ComposeRuntimeError;

    if-nez v0, :cond_1

    .line 751
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1686
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 752
    .local v3, "$i$a$-synchronized-Recomposer$processCompositionError$1":I
    :try_start_0
    const-string v4, "Error was captured in composition while live edit was enabled."

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v4, v5}, Landroidx/compose/runtime/ActualAndroid_androidKt;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 754
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 755
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 756
    new-instance v4, Landroidx/collection/MutableScatterSet;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 758
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 760
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 762
    new-instance v1, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 763
    nop

    .line 764
    nop

    .line 762
    invoke-direct {v1, p3, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Exception;)V

    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 767
    if-eqz p2, :cond_0

    .line 768
    invoke-direct {p0, p2}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 771
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    .end local v3    # "$i$a$-synchronized-Recomposer$processCompositionError$1":I
    monitor-exit v0

    .line 794
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    return-void

    .line 1686
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 781
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .restart local v0    # "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1687
    .restart local v2    # "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 782
    .local v3, "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 783
    .local v4, "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    if-nez v4, :cond_2

    .line 785
    new-instance v5, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    invoke-direct {v5, v1, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Exception;)V

    iput-object v5, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 790
    nop

    .end local v3    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .end local v4    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1687
    monitor-exit v0

    .line 792
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    throw p1

    .line 788
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .restart local v4    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->getCause()Ljava/lang/Exception;

    move-result-object v1

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local p1    # "e":Ljava/lang/Exception;
    .end local p2    # "failedInitialComposition":Landroidx/compose/runtime/ControlledComposition;
    .end local p3    # "recoverable":Z
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    .end local v3    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .end local v4    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local p1    # "e":Ljava/lang/Exception;
    .restart local p2    # "failedInitialComposition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p3    # "recoverable":Z
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V
    .locals 0

    .line 745
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 747
    const/4 p2, 0x0

    .line 745
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 748
    const/4 p3, 0x0

    .line 745
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    return-void
.end method

.method private final readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1281
    new-instance v0, Landroidx/compose/runtime/Recomposer$readObserverOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer$readObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1017
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v0

    .line 1018
    .local v0, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1068
    return-object v1
.end method

.method private final recordComposerModifications(Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "onEachInvalidComposition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 485
    .local v0, "$i$f$recordComposerModifications":I
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1666
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 486
    .local v3, "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2":I
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;

    move-result-object v5

    move-object v6, v5

    .local v6, "it":Landroidx/collection/MutableScatterSet;
    const/4 v7, 0x0

    .line 487
    .local v7, "$i$a$-also-Recomposer$recordComposerModifications$changes$2$1":I
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Landroidx/collection/MutableScatterSet;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v4, v10}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v8}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :cond_0
    nop

    .line 486
    .end local v6    # "it":Landroidx/collection/MutableScatterSet;
    .end local v7    # "$i$a$-also-Recomposer$recordComposerModifications$changes$2$1":I
    nop

    .line 1666
    .end local v3    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2":I
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    check-cast v5, Landroidx/collection/ScatterSet;

    .line 489
    invoke-static {v5}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v1

    .line 485
    nop

    .line 490
    .local v1, "changes":Ljava/util/Set;
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1667
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1668
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 1669
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1670
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .local v8, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v9, 0x0

    .line 492
    .local v9, "$i$a$-fastForEach-Recomposer$recordComposerModifications$5":I
    invoke-interface {v8, v1}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 493
    nop

    .line 1670
    .end local v8    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v9    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$5":I
    nop

    .line 1668
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1672
    .end local v5    # "index$iv":I
    :cond_1
    nop

    .line 495
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 1673
    .local v3, "$i$f$forEach":I
    nop

    .line 1674
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    .line 1675
    .local v5, "size$iv":I
    if-lez v5, :cond_4

    .line 1676
    const/4 v6, 0x0

    .line 1677
    .local v6, "i$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    .line 1679
    .local v7, "content$iv":[Ljava/lang/Object;
    :cond_3
    aget-object v8, v7, v6

    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    add-int/2addr v6, v4

    .line 1681
    if-lt v6, v5, :cond_3

    .line 1683
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    :cond_4
    nop

    .line 496
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEach":I
    .end local v5    # "size$iv":I
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 497
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1684
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v5, 0x0

    .line 498
    .local v5, "$i$a$-synchronized-Recomposer$recordComposerModifications$6":I
    :try_start_1
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v6

    if-nez v6, :cond_5

    .line 501
    nop

    .end local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 502
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    return-void

    .line 498
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6":I
    :cond_5
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 499
    const-string v7, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$recordComposerModifications":I
    .end local v1    # "changes":Ljava/util/Set;
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local p1    # "onEachInvalidComposition":Lkotlin/jvm/functions/Function1;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1684
    .end local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6":I
    .restart local v0    # "$i$f$recordComposerModifications":I
    .restart local v1    # "changes":Ljava/util/Set;
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local p1    # "onEachInvalidComposition":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5

    .line 1666
    .end local v3    # "$i$f$synchronized":I
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    :catchall_1
    move-exception v3

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private final recordComposerModifications()Z
    .locals 17

    .line 441
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1654
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 442
    .local v0, "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    monitor-exit v2

    return v4

    .line 443
    .restart local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_0
    :try_start_1
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    check-cast v4, Landroidx/collection/ScatterSet;

    invoke-static {v4}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v4

    .line 444
    move-object v5, v4

    .line 1655
    .local v5, "it":Ljava/util/Set;
    const/4 v6, 0x0

    .line 444
    .local v6, "$i$a$-also-Recomposer$recordComposerModifications$changes$1$1":I
    new-instance v7, Landroidx/collection/MutableScatterSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10, v8}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v1, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1654
    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    .end local v5    # "it":Ljava/util/Set;
    .end local v6    # "$i$a$-also-Recomposer$recordComposerModifications$changes$1$1":I
    monitor-exit v2

    .line 441
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    move-object v2, v4

    .line 446
    .local v2, "changes":Ljava/util/Set;
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1656
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 447
    .local v0, "$i$a$-synchronized-Recomposer$recordComposerModifications$compositions$1":I
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1656
    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$compositions$1":I
    monitor-exit v3

    .line 446
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    move-object v3, v5

    .line 449
    .local v3, "compositions":Ljava/util/List;
    const/4 v4, 0x0

    .line 450
    .local v4, "complete":Z
    nop

    .line 451
    :try_start_3
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .local v0, "$this$recordComposerModifications_u24lambda_u2410":Landroidx/compose/runtime/Recomposer;
    const/4 v5, 0x0

    .line 452
    .local v5, "$i$a$-run-Recomposer$recordComposerModifications$1":I
    move-object v6, v3

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1657
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1658
    const/4 v11, 0x0

    .local v11, "index$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_1

    .line 1659
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1660
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .local v14, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v15, 0x0

    .line 453
    .local v15, "$i$a$-fastForEach-Recomposer$recordComposerModifications$1$1":I
    invoke-interface {v14, v2}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 457
    iget-object v8, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/Recomposer$State;

    sget-object v16, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_2

    .line 458
    nop

    .line 1660
    .end local v14    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v15    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$1$1":I
    nop

    .line 1658
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_0

    .line 1662
    .end local v11    # "index$iv":I
    :cond_1
    nop

    .line 459
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    nop

    .line 451
    .end local v0    # "$this$recordComposerModifications_u24lambda_u2410":Landroidx/compose/runtime/Recomposer;
    .end local v5    # "$i$a$-run-Recomposer$recordComposerModifications$1":I
    :cond_2
    nop

    .line 460
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1663
    .local v6, "$i$f$synchronized":I
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x0

    .line 461
    .local v0, "$i$a$-synchronized-Recomposer$recordComposerModifications$2":I
    :try_start_4
    new-instance v7, Landroidx/collection/MutableScatterSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v9, v10, v8}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v1, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 462
    nop

    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1663
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 463
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    const/4 v4, 0x1

    .line 465
    nop

    .line 473
    nop

    .line 474
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .restart local v5    # "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1665
    .restart local v6    # "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 475
    .local v0, "$i$a$-synchronized-Recomposer$recordComposerModifications$4":I
    :try_start_6
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v7

    if-nez v7, :cond_3

    .line 478
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1665
    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$4":I
    monitor-exit v5

    .line 474
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    return v7

    .line 475
    .restart local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$4":I
    .restart local v5    # "lock$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    :cond_3
    :try_start_7
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 476
    const-string v8, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "changes":Ljava/util/Set;
    .end local v3    # "compositions":Ljava/util/List;
    .end local v4    # "complete":Z
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1665
    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$4":I
    .restart local v2    # "changes":Ljava/util/Set;
    .restart local v3    # "compositions":Ljava/util/List;
    .restart local v4    # "complete":Z
    .restart local v5    # "lock$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 1663
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v5

    .end local v2    # "changes":Ljava/util/Set;
    .end local v3    # "compositions":Ljava/util/List;
    .end local v4    # "complete":Z
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 465
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    .restart local v2    # "changes":Ljava/util/Set;
    .restart local v3    # "compositions":Ljava/util/List;
    .restart local v4    # "complete":Z
    :catchall_2
    move-exception v0

    .line 469
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .restart local v5    # "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1664
    .restart local v6    # "$i$f$synchronized":I
    monitor-enter v5

    const/4 v7, 0x0

    .line 470
    .local v7, "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    :try_start_9
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    move-object v9, v2

    check-cast v9, Ljava/lang/Iterable;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterSet;->addAll(Ljava/lang/Iterable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1664
    .end local v7    # "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    monitor-exit v5

    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    throw v0

    .restart local v5    # "lock$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    monitor-exit v5

    throw v0

    .line 1656
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    .local v3, "lock$iv":Ljava/lang/Object;
    .local v4, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object v5, v0

    monitor-exit v3

    throw v5

    .line 1654
    .end local v4    # "$i$f$synchronized":I
    .local v2, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private final recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 3
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 851
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 853
    .local v2, "$i$a$-also-Recomposer$recordFailedCompositionLocked$failedCompositions$1":I
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 854
    nop

    .line 852
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-also-Recomposer$recordFailedCompositionLocked$failedCompositions$1":I
    nop

    .line 851
    :cond_0
    nop

    .line 856
    .local v0, "failedCompositions":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 860
    return-void
.end method

.method private final registerRunnerJob(Lkotlinx/coroutines/Job;)V
    .locals 5
    .param p1, "callingJob"    # Lkotlinx/coroutines/Job;

    .line 505
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1685
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 506
    .local v2, "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 507
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_1

    .line 508
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-nez v3, :cond_0

    .line 509
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 510
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    .end local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    monitor-exit v0

    .line 512
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 508
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Recomposer already running"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3

    .line 507
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Recomposer shut down"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3

    .line 1655
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .local v3, "it":Ljava/lang/Throwable;
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :cond_2
    const/4 v4, 0x0

    .line 506
    .local v4, "$i$a$-let-Recomposer$registerRunnerJob$1$1":I
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    .end local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    .end local v3    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-let-Recomposer$registerRunnerJob$1$1":I
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 802
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 804
    return-void
.end method

.method private final resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 5

    .line 812
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1688
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 813
    .local v2, "$i$a$-synchronized-Recomposer$resetErrorState$errorState$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 814
    .local v3, "error":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    if-eqz v3, :cond_0

    .line 815
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 816
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :cond_0
    nop

    .line 1688
    .end local v2    # "$i$a$-synchronized-Recomposer$resetErrorState$errorState$1":I
    .end local v3    # "error":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    monitor-exit v0

    .line 812
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    move-object v0, v3

    .line 820
    .local v0, "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    return-object v0

    .line 1688
    .local v0, "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final retryFailedCompositions()V
    .locals 12

    .line 824
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1689
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 825
    .local v2, "$i$a$-synchronized-Recomposer$retryFailedCompositions$compositionsToRetry$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    move-object v4, v3

    .line 1655
    .local v4, "it":Ljava/util/List;
    const/4 v5, 0x0

    .line 825
    .local v5, "$i$a$-also-Recomposer$retryFailedCompositions$compositionsToRetry$1$1":I
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1689
    .end local v2    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$compositionsToRetry$1":I
    .end local v4    # "it":Ljava/util/List;
    .end local v5    # "$i$a$-also-Recomposer$retryFailedCompositions$compositionsToRetry$1$1":I
    monitor-exit v0

    .line 824
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    if-nez v3, :cond_0

    .line 826
    return-void

    .line 824
    :cond_0
    move-object v0, v3

    .line 827
    .local v0, "compositionsToRetry":Ljava/util/List;
    nop

    .line 828
    :cond_1
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 829
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/ControlledComposition;

    .line 830
    .local v1, "composition":Landroidx/compose/runtime/ControlledComposition;
    instance-of v2, v1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v2, :cond_1

    .line 832
    invoke-interface {v1}, Landroidx/compose/runtime/ControlledComposition;->invalidateAll()V

    .line 833
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl;->getComposable()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ControlledComposition;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 835
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 838
    .end local v1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 841
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1690
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 842
    .local v3, "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    move-object v4, v0

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1691
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1692
    const/4 v6, 0x0

    .local v6, "index$iv":I
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_3

    .line 1693
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1694
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    .local v9, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v10, 0x0

    .line 843
    .local v10, "$i$a$-fastForEach-Recomposer$retryFailedCompositions$1$1":I
    invoke-direct {p0, v9}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 844
    nop

    .line 1694
    .end local v9    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v10    # "$i$a$-fastForEach-Recomposer$retryFailedCompositions$1$1":I
    nop

    .line 1692
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1696
    .end local v6    # "index$iv":I
    :cond_3
    nop

    .line 845
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .end local v3    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1690
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 847
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :cond_4
    :goto_1
    nop

    .line 848
    return-void

    .line 838
    :catchall_1
    move-exception v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 841
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1690
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 842
    .local v4, "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    move-object v5, v0

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1691
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1692
    const/4 v7, 0x0

    .local v7, "index$iv":I
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_5

    .line 1693
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1694
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    .local v10, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v11, 0x0

    .line 843
    .local v11, "$i$a$-fastForEach-Recomposer$retryFailedCompositions$1$1":I
    invoke-direct {p0, v10}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 844
    nop

    .line 1694
    .end local v10    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v11    # "$i$a$-fastForEach-Recomposer$retryFailedCompositions$1$1":I
    nop

    .line 1692
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1696
    .end local v7    # "index$iv":I
    :cond_5
    nop

    .line 845
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .end local v4    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1690
    monitor-exit v2

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    :cond_6
    :goto_3
    throw v1

    .line 1689
    .local v0, "lock$iv":Ljava/lang/Object;
    .local v1, "$i$f$synchronized":I
    :catchall_3
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    iget v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 914
    iget v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .local p1, "toApply":Ljava/util/List;
    iget-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .local p2, "toRecompose":Ljava/util/List;
    iget-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .local v2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .local v3, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .local v4, "this":Landroidx/compose/runtime/Recomposer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v2

    move-object v2, v7

    goto/16 :goto_3

    .end local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v4    # "this":Landroidx/compose/runtime/Recomposer;
    .end local p1    # "toApply":Ljava/util/List;
    .end local p2    # "toRecompose":Ljava/util/List;
    :pswitch_1
    iget-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .restart local p1    # "toApply":Ljava/util/List;
    iget-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .restart local p2    # "toRecompose":Ljava/util/List;
    iget-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .restart local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .restart local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .restart local v4    # "this":Landroidx/compose/runtime/Recomposer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v4    # "this":Landroidx/compose/runtime/Recomposer;
    .end local p1    # "toApply":Ljava/util/List;
    .end local p2    # "toRecompose":Ljava/util/List;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 918
    .local v2, "this":Landroidx/compose/runtime/Recomposer;
    .local p1, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local p2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 919
    .local v3, "toRecompose":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 920
    .local v4, "toApply":Ljava/util/List;
    :goto_1
    nop

    .line 921
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    iput-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    invoke-virtual {p2, v5, p3}, Landroidx/compose/runtime/ProduceFrameSignal;->awaitFrameRequest(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 914
    return-object v1

    .line 921
    :cond_1
    move-object v7, v3

    move-object v3, p1

    move-object p1, v4

    move-object v4, v2

    move-object v2, p2

    move-object p2, v7

    .line 928
    .local v2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v3, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local v4, "this":Landroidx/compose/runtime/Recomposer;
    .local p1, "toApply":Ljava/util/List;
    .local p2, "toRecompose":Ljava/util/List;
    :goto_2
    new-instance v5, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;

    invoke-direct {v5, v4, p2, p1, v2}, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    invoke-interface {v3, v5, p3}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 914
    return-object v1

    .line 928
    :cond_2
    move-object v7, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v2

    move-object v2, v7

    .local v2, "this":Landroidx/compose/runtime/Recomposer;
    .local v3, "toRecompose":Ljava/util/List;
    .local v4, "toApply":Ljava/util/List;
    .local p1, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local p2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    :goto_3
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1288
    new-instance v0, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final asRecomposerInfo()Landroidx/compose/runtime/RecomposerInfo;
    .locals 1

    .line 432
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    check-cast v0, Landroidx/compose/runtime/RecomposerInfo;

    return-object v0
.end method

.method public final awaitIdle(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1352
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/runtime/Recomposer$awaitIdle$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$awaitIdle$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->takeWhile(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->collect(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1353
    return-object v0
.end method

.method public final cancel()V
    .locals 5

    .line 1086
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1710
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1087
    .local v2, "$i$a$-synchronized-Recomposer$cancel$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1088
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 1090
    :cond_0
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$cancel$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    monitor-exit v0

    .line 1091
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1092
    return-void

    .line 1710
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final close()V
    .locals 4

    .line 1101
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1711
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1103
    .local v2, "$i$a$-synchronized-Recomposer$close$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 1104
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$close$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 1106
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_0
    :goto_0
    return-void
.end method

.method public composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1119
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v0

    .line 1120
    .local v0, "composerWasComposing":Z
    nop

    .line 1121
    const/4 v1, 0x0

    .local v1, "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v3, 0x0

    .line 1712
    .local v3, "$i$f$composing":I
    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1713
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-direct {v2, p1, v1}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 1712
    invoke-virtual {v5, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1715
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1716
    :try_start_1
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1717
    .local v7, "$i$f$enter":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1718
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1719
    const/4 v9, 0x0

    .line 1122
    .local v9, "$i$a$-composing-Recomposer$composeInitial$1":I
    :try_start_2
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->composeContent(Lkotlin/jvm/functions/Function2;)V

    .line 1123
    nop

    .end local v9    # "$i$a$-composing-Recomposer$composeInitial$1":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1719
    nop

    .line 1721
    :try_start_3
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1719
    nop

    .line 1721
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1722
    :try_start_4
    invoke-direct {v2, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1716
    nop

    .line 1130
    .end local v1    # "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    if-nez v0, :cond_0

    .line 1131
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 1134
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1723
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 1135
    .local v3, "$i$a$-synchronized-Recomposer$composeInitial$2":I
    :try_start_5
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Recomposer$State;

    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_1

    .line 1136
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1137
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1140
    :cond_1
    nop

    .end local v3    # "$i$a$-synchronized-Recomposer$composeInitial$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1723
    monitor-exit v1

    .line 1142
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 1143
    :try_start_6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1149
    nop

    .line 1150
    :try_start_7
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V

    .line 1151
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1157
    if-nez v0, :cond_2

    .line 1160
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 1162
    :cond_2
    return-void

    .line 1152
    :catch_0
    move-exception v1

    move-object v3, v1

    .line 1153
    .local v3, "e":Ljava/lang/Exception;
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 1154
    return-void

    .line 1144
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1145
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, p1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 1146
    return-void

    .line 1723
    .local v1, "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1721
    .local v1, "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    .local v2, "this_$iv":Landroidx/compose/runtime/Recomposer;
    .local v3, "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v9

    :try_start_8
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "composerWasComposing":Z
    .end local v1    # "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1722
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "composerWasComposing":Z
    .restart local v1    # "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v3    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_2
    move-exception v6

    :try_start_9
    invoke-direct {v2, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .end local v0    # "composerWasComposing":Z
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1124
    .end local v1    # "modifiedValues$iv":Landroidx/collection/MutableScatterSet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v0    # "composerWasComposing":Z
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catch_2
    move-exception v1

    .line 1125
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, p1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 1126
    return-void
.end method

.method public deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 5
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1444
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1864
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1445
    .local v2, "$i$a$-synchronized-Recomposer$deletedMovableContent$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroidx/compose/runtime/RecomposerKt;->addMultiValue(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    .end local v2    # "$i$a$-synchronized-Recomposer$deletedMovableContent$1":I
    monitor-exit v0

    .line 1447
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1864
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final getChangeCount()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    return-wide v0
.end method

.method public getCollectingCallByInformation$runtime_release()Z
    .locals 1

    .line 1394
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCollectingParameterInformation$runtime_release()Z
    .locals 1

    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectingSourceInformation$runtime_release()Z
    .locals 1

    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public getCompoundHashKey$runtime_release()I
    .locals 1

    .line 1391
    const/16 v0, 0x3e8

    return v0
.end method

.method public final getCurrentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 287
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getHasPendingWork()Z
    .locals 4

    .line 1329
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1853
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1330
    .local v2, "$i$a$-synchronized-Recomposer$hasPendingWork$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1331
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1332
    iget v3, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    if-gtz v3, :cond_1

    .line 1333
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1334
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1330
    :goto_1
    nop

    .line 1853
    .end local v2    # "$i$a$-synchronized-Recomposer$hasPendingWork$1":I
    monitor-exit v0

    .line 1335
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1853
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public getRecomposeCoroutineContext$runtime_release()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 291
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1440
    nop

    .line 1437
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1863
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1438
    .local v2, "$i$a$-synchronized-Recomposer$insertMovableContent$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    .end local v2    # "$i$a$-synchronized-Recomposer$insertMovableContent$1":I
    monitor-exit v0

    .line 1437
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1440
    if-eqz v3, :cond_0

    .line 1437
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1440
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1441
    :cond_0
    return-void

    .line 1863
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1426
    nop

    .line 1421
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1859
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1422
    .local v2, "$i$a$-synchronized-Recomposer$invalidate$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1423
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 1860
    .local v4, "$i$f$plusAssign":I
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1861
    nop

    .line 1424
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$plusAssign":I
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1425
    :cond_0
    const/4 v3, 0x0

    .line 1422
    :goto_0
    nop

    .line 1859
    .end local v2    # "$i$a$-synchronized-Recomposer$invalidate$1":I
    monitor-exit v0

    .line 1421
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1426
    if-eqz v3, :cond_1

    .line 1421
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1426
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1427
    :cond_1
    return-void

    .line 1859
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public invalidateScope$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 4
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1433
    nop

    .line 1430
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1862
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1431
    .local v2, "$i$a$-synchronized-Recomposer$invalidateScope$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    .end local v2    # "$i$a$-synchronized-Recomposer$invalidateScope$1":I
    monitor-exit v0

    .line 1430
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1433
    if-eqz v3, :cond_0

    .line 1430
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1433
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1434
    :cond_0
    return-void

    .line 1862
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1112
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1113
    return-object v0
.end method

.method public movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p2, "data"    # Landroidx/compose/runtime/MovableContentState;

    .line 1453
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1865
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1454
    .local v2, "$i$a$-synchronized-Recomposer$movableContentStateReleased$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$movableContentStateReleased$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    monitor-exit v0

    .line 1456
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1865
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1471
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1867
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1472
    .local v2, "$i$a$-synchronized-Recomposer$movableContentStateResolve$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/MovableContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    .end local v2    # "$i$a$-synchronized-Recomposer$movableContentStateResolve$1":I
    monitor-exit v0

    .line 1473
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-object v3

    .line 1867
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final pauseCompositionFrameClock()V
    .locals 4

    .line 1366
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1854
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1367
    .local v2, "$i$a$-synchronized-Recomposer$pauseCompositionFrameClock$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 1368
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$pauseCompositionFrameClock$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    monitor-exit v0

    .line 1369
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1854
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public recordInspectionTable$runtime_release(Ljava/util/Set;)V
    .locals 0
    .param p1, "table"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    .line 1406
    return-void
.end method

.method public registerComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1410
    return-void
.end method

.method public reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 6
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1459
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1866
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1460
    .local v2, "$i$a$-synchronized-Recomposer$reportRemovedComposition$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 1461
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    move-object v4, v3

    .local v4, "it":Ljava/util/Set;
    const/4 v5, 0x0

    .line 1462
    .local v5, "$i$a$-also-Recomposer$reportRemovedComposition$1$compositionsRemoved$1":I
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 1463
    nop

    .line 1461
    .end local v4    # "it":Ljava/util/Set;
    .end local v5    # "$i$a$-also-Recomposer$reportRemovedComposition$1$compositionsRemoved$1":I
    nop

    .line 1460
    :cond_0
    nop

    .line 1464
    .local v3, "compositionsRemoved":Ljava/util/Set;
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    .end local v2    # "$i$a$-synchronized-Recomposer$reportRemovedComposition$1":I
    .end local v3    # "compositionsRemoved":Ljava/util/Set;
    monitor-exit v0

    .line 1466
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1866
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final resumeCompositionFrameClock()V
    .locals 4

    .line 1386
    nop

    .line 1381
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1855
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1382
    .local v2, "$i$a$-synchronized-Recomposer$resumeCompositionFrameClock$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    if-eqz v3, :cond_0

    .line 1383
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 1384
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1385
    :cond_0
    const/4 v3, 0x0

    .line 1382
    :goto_0
    nop

    .line 1855
    .end local v2    # "$i$a$-synchronized-Recomposer$resumeCompositionFrameClock$1":I
    monitor-exit v0

    .line 1381
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1386
    if-eqz v3, :cond_1

    .line 1381
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1386
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1387
    :cond_1
    return-void

    .line 1855
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final runRecomposeAndApplyChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 525
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 743
    return-object v0
.end method

.method public final runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "recomposeCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 879
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 912
    return-object v0
.end method

.method public unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1413
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1856
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1414
    .local v2, "$i$a$-synchronized-Recomposer$unregisterComposition$1":I
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1415
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 1857
    .local v4, "$i$f$minusAssign":I
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 1858
    nop

    .line 1416
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$minusAssign":I
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1417
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$unregisterComposition$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1856
    monitor-exit v0

    .line 1418
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1856
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
