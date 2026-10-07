package androidx.compose.runtime.collection;

import androidx.collection.ScatterSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: ScatterSetWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\b\u001a1\u0010\u0006\u001a\u00020\u0007\"\b\b\u0000\u0010\b*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\b0\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u00020\u00070\u0005H\u0080\b\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u0002\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\nH\u0000¨\u0006\u000b"}, d2 = {"fastAny", "", "", "", "block", "Lkotlin/Function1;", "fastForEach", "", "T", "wrapIntoSet", "Landroidx/collection/ScatterSet;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ScatterSetWrapperKt {
    public static final <T> Set<T> wrapIntoSet(ScatterSet<T> scatterSet) {
        return new ScatterSetWrapper(scatterSet);
    }

    public static final <T> void fastForEach(Set<? extends T> set, Function1<? super T, Unit> function1) {
        int $i$f$fastForEach = 0;
        if (set instanceof ScatterSetWrapper) {
            ScatterSet<T> set$runtime_release = ((ScatterSetWrapper) set).getSet$runtime_release();
            Object[] k$iv = set$runtime_release.elements;
            long[] m$iv$iv = set$runtime_release.metadata;
            int lastIndex$iv$iv = m$iv$iv.length - 2;
            int i$iv$iv = 0;
            if (0 > lastIndex$iv$iv) {
                return;
            }
            while (true) {
                long slot$iv$iv = m$iv$iv[i$iv$iv];
                int $i$f$fastForEach2 = $i$f$fastForEach;
                ScatterSet<T> scatterSet = set$runtime_release;
                if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i = 8;
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    for (int j$iv$iv = 0; j$iv$iv < bitCount$iv$iv; j$iv$iv++) {
                        long value$iv$iv$iv = 255 & slot$iv$iv;
                        if (value$iv$iv$iv < 128) {
                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                            function1.invoke(k$iv[index$iv$iv]);
                        }
                        i = 8;
                        slot$iv$iv >>= 8;
                    }
                    if (bitCount$iv$iv != i) {
                        return;
                    }
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    return;
                }
                i$iv$iv++;
                $i$f$fastForEach = $i$f$fastForEach2;
                set$runtime_release = scatterSet;
            }
        } else {
            Set<? extends T> $this$forEach$iv = set;
            for (Object element$iv : $this$forEach$iv) {
                function1.invoke(element$iv);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean fastAny(java.util.Set<? extends java.lang.Object> r24, kotlin.jvm.functions.Function1<java.lang.Object, java.lang.Boolean> r25) {
        /*
            r0 = r24
            r1 = r25
            r2 = 0
            boolean r3 = r0 instanceof androidx.compose.runtime.collection.ScatterSetWrapper
            if (r3 == 0) goto L91
            r3 = r0
            androidx.compose.runtime.collection.ScatterSetWrapper r3 = (androidx.compose.runtime.collection.ScatterSetWrapper) r3
            androidx.collection.ScatterSet r3 = r3.getSet$runtime_release()
            r6 = 0
            r7 = r3
            r8 = 0
            java.lang.Object[] r9 = r7.elements
            r10 = r7
            r11 = 0
            long[] r12 = r10.metadata
            int r13 = r12.length
            int r13 = r13 + (-2)
            r14 = 0
            if (r14 > r13) goto L89
        L22:
            r15 = r12[r14]
            r17 = r15
            r19 = 0
            r4 = r17
            r17 = r2
            r18 = r3
            long r2 = ~r4
            r20 = 7
            long r2 = r2 << r20
            long r2 = r2 & r4
            r20 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r2 = r2 & r20
            int r2 = (r2 > r20 ? 1 : (r2 == r20 ? 0 : -1))
            if (r2 == 0) goto L80
            int r2 = r14 - r13
            int r2 = ~r2
            int r2 = r2 >>> 31
            r3 = 8
            int r2 = 8 - r2
            r4 = 0
        L49:
            if (r4 >= r2) goto L7e
            r20 = 255(0xff, double:1.26E-321)
            long r20 = r15 & r20
            r5 = 0
            r22 = 128(0x80, double:6.3E-322)
            int r19 = (r20 > r22 ? 1 : (r20 == r22 ? 0 : -1))
            if (r19 >= 0) goto L58
            r5 = 1
            goto L59
        L58:
            r5 = 0
        L59:
            if (r5 == 0) goto L78
            int r5 = r14 << 3
            int r5 = r5 + r4
            r19 = r5
            r20 = 0
            r3 = r9[r19]
            r22 = 0
            java.lang.Object r23 = r1.invoke(r3)
            java.lang.Boolean r23 = (java.lang.Boolean) r23
            boolean r23 = r23.booleanValue()
            if (r23 == 0) goto L74
            r4 = 1
            goto Lc3
        L74:
        L78:
            r3 = 8
            long r15 = r15 >> r3
            int r4 = r4 + 1
            goto L49
        L7e:
            if (r2 != r3) goto L8e
        L80:
            if (r14 == r13) goto L8d
            int r14 = r14 + 1
            r2 = r17
            r3 = r18
            goto L22
        L89:
            r17 = r2
            r18 = r3
        L8d:
        L8e:
            r4 = 0
            goto Lc3
        L91:
            r17 = r2
            r2 = r0
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            r3 = 0
            boolean r4 = r2 instanceof java.util.Collection
            if (r4 == 0) goto La6
            r4 = r2
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto La6
            r4 = 0
            goto Lc3
        La6:
            java.util.Iterator r4 = r2.iterator()
        Laa:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto Lc2
            java.lang.Object r5 = r4.next()
            java.lang.Object r6 = r1.invoke(r5)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto Laa
            r4 = 1
            goto Lc3
        Lc2:
            r4 = 0
        Lc3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.collection.ScatterSetWrapperKt.fastAny(java.util.Set, kotlin.jvm.functions.Function1):boolean");
    }
}
