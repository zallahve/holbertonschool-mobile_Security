package androidx.compose.runtime;

import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Composer.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001J\u000e\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020%2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0006J\u001e\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006J\u0016\u0010+\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0004J\u0016\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0006J\u000e\u00100\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0004R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R-\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u00138FX\u0086\u0084\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\nR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00061"}, d2 = {"Landroidx/compose/runtime/Pending;", "", "keyInfos", "", "Landroidx/compose/runtime/KeyInfo;", "startIndex", "", "(Ljava/util/List;I)V", "groupIndex", "getGroupIndex", "()I", "setGroupIndex", "(I)V", "groupInfos", "Landroidx/collection/MutableIntObjectMap;", "Landroidx/compose/runtime/GroupInfo;", "getKeyInfos", "()Ljava/util/List;", "keyMap", "Landroidx/compose/runtime/MutableScatterMultiMap;", "getKeyMap-SAeQiB4", "()Landroidx/collection/MutableScatterMap;", "keyMap$delegate", "Lkotlin/Lazy;", "getStartIndex", "used", "", "getUsed", "usedKeys", "getNext", "key", "dataKey", "nodePositionOf", "keyInfo", "recordUsed", "", "registerInsert", "", "insertIndex", "registerMoveNode", "from", "to", "count", "registerMoveSlot", "slotPositionOf", "updateNodeCount", "group", "newCount", "updatedNodeCountOf", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class Pending {
    private int groupIndex;
    private final MutableIntObjectMap<GroupInfo> groupInfos;
    private final List<KeyInfo> keyInfos;

    /* JADX INFO: renamed from: keyMap$delegate, reason: from kotlin metadata */
    private final Lazy keyMap;
    private final int startIndex;
    private final List<KeyInfo> usedKeys;

    public Pending(List<KeyInfo> list, int startIndex) {
        this.keyInfos = list;
        this.startIndex = startIndex;
        boolean value$iv = this.startIndex >= 0;
        if (!value$iv) {
            PreconditionsKt.throwIllegalArgumentException("Invalid start index");
        }
        this.usedKeys = new ArrayList();
        Pending $this$groupInfos_u24lambda_u241 = this;
        int runningNodeIndex = 0;
        MutableIntObjectMap<GroupInfo> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        int size = $this$groupInfos_u24lambda_u241.keyInfos.size();
        for (int index = 0; index < size; index++) {
            KeyInfo keyInfo = $this$groupInfos_u24lambda_u241.keyInfos.get(index);
            mutableIntObjectMap.set(keyInfo.getLocation(), new GroupInfo(index, runningNodeIndex, keyInfo.getNodes()));
            runningNodeIndex += keyInfo.getNodes();
        }
        this.groupInfos = mutableIntObjectMap;
        this.keyMap = LazyKt.lazy(new Function0<MutableScatterMultiMap<Object, KeyInfo>>() { // from class: androidx.compose.runtime.Pending$keyMap$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ MutableScatterMultiMap<Object, KeyInfo> invoke() {
                return MutableScatterMultiMap.m3267boximpl(m3277invokeSAeQiB4());
            }

            /* JADX INFO: renamed from: invoke-SAeQiB4, reason: not valid java name */
            public final MutableScatterMap<K, Object> m3277invokeSAeQiB4() {
                MutableScatterMap it = ComposerKt.multiMap(this.this$0.getKeyInfos().size());
                Pending pending = this.this$0;
                int size2 = pending.getKeyInfos().size();
                for (int index2 = 0; index2 < size2; index2++) {
                    KeyInfo keyInfo2 = pending.getKeyInfos().get(index2);
                    MutableScatterMultiMap.m3273putimpl(it, ComposerKt.getJoinedKey(keyInfo2), keyInfo2);
                }
                return it;
            }
        });
    }

    public final List<KeyInfo> getKeyInfos() {
        return this.keyInfos;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final int getGroupIndex() {
        return this.groupIndex;
    }

    public final void setGroupIndex(int i) {
        this.groupIndex = i;
    }

    /* JADX INFO: renamed from: getKeyMap-SAeQiB4, reason: not valid java name */
    public final MutableScatterMap<K, Object> m3276getKeyMapSAeQiB4() {
        return ((MutableScatterMultiMap) this.keyMap.getValue()).getMap();
    }

    public final KeyInfo getNext(int key, Object dataKey) {
        Object joinedKey = dataKey != null ? new JoinedKey(Integer.valueOf(key), dataKey) : Integer.valueOf(key);
        return (KeyInfo) MutableScatterMultiMap.m3272popimpl(m3276getKeyMapSAeQiB4(), joinedKey);
    }

    public final boolean recordUsed(KeyInfo keyInfo) {
        return this.usedKeys.add(keyInfo);
    }

    public final List<KeyInfo> getUsed() {
        return this.usedKeys;
    }

    public final void registerMoveSlot(int from, int to) {
        Object[] v$iv;
        Object[] v$iv2;
        char c = 7;
        long j = -9187201950435737472L;
        if (from > to) {
            IntObjectMap this_$iv = this.groupInfos;
            Object[] v$iv3 = this_$iv.values;
            long[] m$iv$iv = this_$iv.metadata;
            int lastIndex$iv$iv = m$iv$iv.length - 2;
            int i$iv$iv = 0;
            if (0 > lastIndex$iv$iv) {
                return;
            }
            while (true) {
                long slot$iv$iv = m$iv$iv[i$iv$iv];
                long[] m$iv$iv2 = m$iv$iv;
                long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << c) & slot$iv$iv & j;
                if ($this$maskEmptyOrDeleted$iv$iv$iv != j) {
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    for (int j$iv$iv = 0; j$iv$iv < bitCount$iv$iv; j$iv$iv++) {
                        long value$iv$iv$iv = slot$iv$iv & 255;
                        int $i$f$isFull = value$iv$iv$iv < 128 ? 1 : 0;
                        if ($i$f$isFull != 0) {
                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                            GroupInfo group = (GroupInfo) v$iv3[index$iv$iv];
                            int position = group.getSlotIndex();
                            if (position == from) {
                                group.setSlotIndex(to);
                            } else if (to <= position && position < from) {
                                int index$iv$iv2 = position + 1;
                                group.setSlotIndex(index$iv$iv2);
                            }
                        }
                        slot$iv$iv >>= 8;
                    }
                    if (bitCount$iv$iv != 8) {
                        return;
                    }
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    return;
                }
                i$iv$iv++;
                m$iv$iv = m$iv$iv2;
                c = 7;
                j = -9187201950435737472L;
            }
        } else if (to > from) {
            IntObjectMap this_$iv2 = this.groupInfos;
            int $i$f$forEachValue = 0;
            Object[] v$iv4 = this_$iv2.values;
            long[] m$iv$iv3 = this_$iv2.metadata;
            int lastIndex$iv$iv2 = m$iv$iv3.length - 2;
            int i$iv$iv2 = 0;
            if (0 > lastIndex$iv$iv2) {
                return;
            }
            while (true) {
                long slot$iv$iv2 = m$iv$iv3[i$iv$iv2];
                IntObjectMap this_$iv3 = this_$iv2;
                int $i$f$forEachValue2 = $i$f$forEachValue;
                if ((((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    v$iv = v$iv4;
                } else {
                    int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                    int j$iv$iv2 = 0;
                    while (j$iv$iv2 < bitCount$iv$iv2) {
                        long value$iv$iv$iv2 = slot$iv$iv2 & 255;
                        int $i$f$isFull2 = value$iv$iv$iv2 < 128 ? 1 : 0;
                        if ($i$f$isFull2 == 0) {
                            v$iv2 = v$iv4;
                        } else {
                            int index$iv$iv3 = (i$iv$iv2 << 3) + j$iv$iv2;
                            GroupInfo group2 = (GroupInfo) v$iv4[index$iv$iv3];
                            int position2 = group2.getSlotIndex();
                            if (position2 == from) {
                                group2.setSlotIndex(to);
                                v$iv2 = v$iv4;
                            } else {
                                v$iv2 = v$iv4;
                                if (from + 1 <= position2 && position2 < to) {
                                    group2.setSlotIndex(position2 - 1);
                                }
                            }
                        }
                        slot$iv$iv2 >>= 8;
                        j$iv$iv2++;
                        v$iv4 = v$iv2;
                    }
                    v$iv = v$iv4;
                    if (bitCount$iv$iv2 != 8) {
                        return;
                    }
                }
                if (i$iv$iv2 == lastIndex$iv$iv2) {
                    return;
                }
                i$iv$iv2++;
                this_$iv2 = this_$iv3;
                $i$f$forEachValue = $i$f$forEachValue2;
                v$iv4 = v$iv;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void registerMoveNode(int r31, int r32, int r33) {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Pending.registerMoveNode(int, int, int):void");
    }

    public final void registerInsert(KeyInfo keyInfo, int insertIndex) {
        this.groupInfos.set(keyInfo.getLocation(), new GroupInfo(-1, insertIndex, 0));
    }

    public final boolean updateNodeCount(int group, int newCount) {
        int index;
        int index2;
        int newIndex;
        GroupInfo groupInfo = this.groupInfos.get(group);
        if (groupInfo != null) {
            int index3 = groupInfo.getNodeIndex();
            int difference = newCount - groupInfo.getNodeCount();
            groupInfo.setNodeCount(newCount);
            if (difference != 0) {
                IntObjectMap this_$iv = this.groupInfos;
                Object[] v$iv = this_$iv.values;
                long[] m$iv$iv = this_$iv.metadata;
                int lastIndex$iv$iv = m$iv$iv.length - 2;
                int i$iv$iv = 0;
                if (0 > lastIndex$iv$iv) {
                    return true;
                }
                while (true) {
                    long slot$iv$iv = m$iv$iv[i$iv$iv];
                    IntObjectMap this_$iv2 = this_$iv;
                    int index4 = index3;
                    if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                        index = index4;
                    } else {
                        int i = 8;
                        int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                        int j$iv$iv = 0;
                        while (j$iv$iv < bitCount$iv$iv) {
                            long value$iv$iv$iv = slot$iv$iv & 255;
                            int $i$f$isFull = value$iv$iv$iv < 128 ? 1 : 0;
                            if ($i$f$isFull == 0) {
                                index2 = index4;
                            } else {
                                int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                GroupInfo childGroupInfo = (GroupInfo) v$iv[index$iv$iv];
                                index2 = index4;
                                if (childGroupInfo.getNodeIndex() >= index2 && !Intrinsics.areEqual(childGroupInfo, groupInfo) && (newIndex = childGroupInfo.getNodeIndex() + difference) >= 0) {
                                    childGroupInfo.setNodeIndex(newIndex);
                                }
                            }
                            slot$iv$iv >>= 8;
                            j$iv$iv++;
                            i = 8;
                            index4 = index2;
                        }
                        index = index4;
                        if (bitCount$iv$iv != i) {
                            return true;
                        }
                    }
                    if (i$iv$iv == lastIndex$iv$iv) {
                        return true;
                    }
                    i$iv$iv++;
                    index3 = index;
                    this_$iv = this_$iv2;
                }
            } else {
                return true;
            }
        } else {
            return false;
        }
    }

    public final int slotPositionOf(KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        if (groupInfo != null) {
            return groupInfo.getSlotIndex();
        }
        return -1;
    }

    public final int nodePositionOf(KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        if (groupInfo != null) {
            return groupInfo.getNodeIndex();
        }
        return -1;
    }

    public final int updatedNodeCountOf(KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        return groupInfo != null ? groupInfo.getNodeCount() : keyInfo.getNodes();
    }
}
