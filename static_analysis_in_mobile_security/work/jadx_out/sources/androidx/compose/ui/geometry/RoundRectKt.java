package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: RoundRect.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0019\u001a \u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a@\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001c2\b\b\u0002\u0010 \u001a\u00020\u001c2\b\b\u0002\u0010!\u001a\u00020\u001c2\b\b\u0002\u0010\"\u001a\u00020\u001cø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u001e\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012\u001a8\u0010\u0019\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a6\u0010\u0019\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012\u001a\u001e\u0010-\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u0012\u001a\u001c\u00101\u001a\u00020\u0002*\u00020\u00022\u0006\u00102\u001a\u00020\u0006ø\u0001\u0000¢\u0006\u0004\b3\u00104\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0015\u0010\t\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b\"\u0015\u0010\f\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b\"\u0015\u0010\r\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b\"\u0015\u0010\u000e\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000b\"\u0015\u0010\u000f\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000b\"\u0015\u0010\u0010\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000b\"\u0015\u0010\u0011\u001a\u00020\u0012*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\"\u0015\u0010\u0015\u001a\u00020\u0012*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014\"\u0015\u0010\u0017\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0004\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u00065"}, d2 = {"boundingRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/geometry/RoundRect;", "getBoundingRect", "(Landroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/Rect;", "center", "Landroidx/compose/ui/geometry/Offset;", "getCenter", "(Landroidx/compose/ui/geometry/RoundRect;)J", "isCircle", "", "(Landroidx/compose/ui/geometry/RoundRect;)Z", "isEllipse", "isEmpty", "isFinite", "isRect", "isSimple", "maxDimension", "", "getMaxDimension", "(Landroidx/compose/ui/geometry/RoundRect;)F", "minDimension", "getMinDimension", "safeInnerRect", "getSafeInnerRect", "RoundRect", "rect", "cornerRadius", "Landroidx/compose/ui/geometry/CornerRadius;", "RoundRect-sniSvfs", "(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/RoundRect;", "topLeft", "topRight", "bottomRight", "bottomLeft", "RoundRect-ZAM2FJo", "(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;", "radiusX", "radiusY", "left", "top", "right", "bottom", "RoundRect-gG7oq9Y", "(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;", "lerp", "start", "stop", "fraction", "translate", "offset", "translate-Uv8p0NA", "(Landroidx/compose/ui/geometry/RoundRect;J)Landroidx/compose/ui/geometry/RoundRect;", "ui-geometry_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class RoundRectKt {
    public static final RoundRect RoundRect(float left, float top, float right, float bottom, float radiusX, float radiusY) {
        long radius = CornerRadiusKt.CornerRadius(radiusX, radiusY);
        return new RoundRect(left, top, right, bottom, radius, radius, radius, radius, null);
    }

    /* JADX INFO: renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m3576RoundRectgG7oq9Y(float left, float top, float right, float bottom, long cornerRadius) {
        return RoundRect(left, top, right, bottom, CornerRadius.m3497getXimpl(cornerRadius), CornerRadius.m3498getYimpl(cornerRadius));
    }

    public static final RoundRect RoundRect(Rect rect, float radiusX, float radiusY) {
        return RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), radiusX, radiusY);
    }

    /* JADX INFO: renamed from: RoundRect-sniSvfs, reason: not valid java name */
    public static final RoundRect m3577RoundRectsniSvfs(Rect rect, long cornerRadius) {
        return RoundRect(rect, CornerRadius.m3497getXimpl(cornerRadius), CornerRadius.m3498getYimpl(cornerRadius));
    }

    /* JADX INFO: renamed from: RoundRect-ZAM2FJo, reason: not valid java name */
    public static final RoundRect m3574RoundRectZAM2FJo(Rect rect, long topLeft, long topRight, long bottomRight, long bottomLeft) {
        return new RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), topLeft, topRight, bottomRight, bottomLeft, null);
    }

    /* JADX INFO: renamed from: translate-Uv8p0NA, reason: not valid java name */
    public static final RoundRect m3578translateUv8p0NA(RoundRect $this$translate_u2dUv8p0NA, long offset) {
        return new RoundRect(Offset.m3522getXimpl(offset) + $this$translate_u2dUv8p0NA.getLeft(), Offset.m3523getYimpl(offset) + $this$translate_u2dUv8p0NA.getTop(), Offset.m3522getXimpl(offset) + $this$translate_u2dUv8p0NA.getRight(), Offset.m3523getYimpl(offset) + $this$translate_u2dUv8p0NA.getBottom(), $this$translate_u2dUv8p0NA.m3572getTopLeftCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m3573getTopRightCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m3571getBottomRightCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m3570getBottomLeftCornerRadiuskKHJgLs(), null);
    }

    public static final Rect getBoundingRect(RoundRect $this$boundingRect) {
        return new Rect($this$boundingRect.getLeft(), $this$boundingRect.getTop(), $this$boundingRect.getRight(), $this$boundingRect.getBottom());
    }

    public static final Rect getSafeInnerRect(RoundRect $this$safeInnerRect) {
        float leftRadius = Math.max(CornerRadius.m3497getXimpl($this$safeInnerRect.m3570getBottomLeftCornerRadiuskKHJgLs()), CornerRadius.m3497getXimpl($this$safeInnerRect.m3572getTopLeftCornerRadiuskKHJgLs()));
        float topRadius = Math.max(CornerRadius.m3498getYimpl($this$safeInnerRect.m3572getTopLeftCornerRadiuskKHJgLs()), CornerRadius.m3498getYimpl($this$safeInnerRect.m3573getTopRightCornerRadiuskKHJgLs()));
        float rightRadius = Math.max(CornerRadius.m3497getXimpl($this$safeInnerRect.m3573getTopRightCornerRadiuskKHJgLs()), CornerRadius.m3497getXimpl($this$safeInnerRect.m3571getBottomRightCornerRadiuskKHJgLs()));
        float bottomRadius = Math.max(CornerRadius.m3498getYimpl($this$safeInnerRect.m3571getBottomRightCornerRadiuskKHJgLs()), CornerRadius.m3498getYimpl($this$safeInnerRect.m3570getBottomLeftCornerRadiuskKHJgLs()));
        return new Rect($this$safeInnerRect.getLeft() + (leftRadius * 0.29289323f), $this$safeInnerRect.getTop() + (topRadius * 0.29289323f), $this$safeInnerRect.getRight() - (rightRadius * 0.29289323f), $this$safeInnerRect.getBottom() - (bottomRadius * 0.29289323f));
    }

    public static final boolean isEmpty(RoundRect $this$isEmpty) {
        return $this$isEmpty.getLeft() >= $this$isEmpty.getRight() || $this$isEmpty.getTop() >= $this$isEmpty.getBottom();
    }

    public static final boolean isFinite(RoundRect $this$isFinite) {
        float left = $this$isFinite.getLeft();
        if ((Float.isInfinite(left) || Float.isNaN(left)) ? false : true) {
            float top = $this$isFinite.getTop();
            if ((Float.isInfinite(top) || Float.isNaN(top)) ? false : true) {
                float right = $this$isFinite.getRight();
                if ((Float.isInfinite(right) || Float.isNaN(right)) ? false : true) {
                    float bottom = $this$isFinite.getBottom();
                    if ((Float.isInfinite(bottom) || Float.isNaN(bottom)) ? false : true) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isRect(androidx.compose.ui.geometry.RoundRect r6) {
        /*
            long r0 = r6.m3572getTopLeftCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3497getXimpl(r0)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r0 != 0) goto L11
            r0 = r2
            goto L12
        L11:
            r0 = r3
        L12:
            if (r0 != 0) goto L25
            long r4 = r6.m3572getTopLeftCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3498getYimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L22
            r0 = r2
            goto L23
        L22:
            r0 = r3
        L23:
            if (r0 == 0) goto L8c
        L25:
            long r4 = r6.m3573getTopRightCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3497getXimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L33
            r0 = r2
            goto L34
        L33:
            r0 = r3
        L34:
            if (r0 != 0) goto L47
            long r4 = r6.m3573getTopRightCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3498getYimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L44
            r0 = r2
            goto L45
        L44:
            r0 = r3
        L45:
            if (r0 == 0) goto L8c
        L47:
            long r4 = r6.m3570getBottomLeftCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3497getXimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L55
            r0 = r2
            goto L56
        L55:
            r0 = r3
        L56:
            if (r0 != 0) goto L69
            long r4 = r6.m3570getBottomLeftCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3498getYimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L66
            r0 = r2
            goto L67
        L66:
            r0 = r3
        L67:
            if (r0 == 0) goto L8c
        L69:
            long r4 = r6.m3571getBottomRightCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3497getXimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L77
            r0 = r2
            goto L78
        L77:
            r0 = r3
        L78:
            if (r0 != 0) goto L8d
            long r4 = r6.m3571getBottomRightCornerRadiuskKHJgLs()
            float r0 = androidx.compose.ui.geometry.CornerRadius.m3498getYimpl(r4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L88
            r0 = r2
            goto L89
        L88:
            r0 = r3
        L89:
            if (r0 == 0) goto L8c
            goto L8d
        L8c:
            r2 = r3
        L8d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.geometry.RoundRectKt.isRect(androidx.compose.ui.geometry.RoundRect):boolean");
    }

    public static final boolean isEllipse(RoundRect $this$isEllipse) {
        if (CornerRadius.m3497getXimpl($this$isEllipse.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isEllipse.m3573getTopRightCornerRadiuskKHJgLs())) {
            if (CornerRadius.m3498getYimpl($this$isEllipse.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isEllipse.m3573getTopRightCornerRadiuskKHJgLs())) {
                if (CornerRadius.m3497getXimpl($this$isEllipse.m3573getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isEllipse.m3571getBottomRightCornerRadiuskKHJgLs())) {
                    if (CornerRadius.m3498getYimpl($this$isEllipse.m3573getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isEllipse.m3571getBottomRightCornerRadiuskKHJgLs())) {
                        if (CornerRadius.m3497getXimpl($this$isEllipse.m3571getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isEllipse.m3570getBottomLeftCornerRadiuskKHJgLs())) {
                            if ((CornerRadius.m3498getYimpl($this$isEllipse.m3571getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isEllipse.m3570getBottomLeftCornerRadiuskKHJgLs())) && $this$isEllipse.getWidth() <= ((double) CornerRadius.m3497getXimpl($this$isEllipse.m3572getTopLeftCornerRadiuskKHJgLs())) * 2.0d && $this$isEllipse.getHeight() <= ((double) CornerRadius.m3498getYimpl($this$isEllipse.m3572getTopLeftCornerRadiuskKHJgLs())) * 2.0d) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean isCircle(RoundRect $this$isCircle) {
        return (($this$isCircle.getWidth() > $this$isCircle.getHeight() ? 1 : ($this$isCircle.getWidth() == $this$isCircle.getHeight() ? 0 : -1)) == 0) && isEllipse($this$isCircle);
    }

    public static final float getMinDimension(RoundRect $this$minDimension) {
        return Math.min(Math.abs($this$minDimension.getWidth()), Math.abs($this$minDimension.getHeight()));
    }

    public static final float getMaxDimension(RoundRect $this$maxDimension) {
        return Math.max(Math.abs($this$maxDimension.getWidth()), Math.abs($this$maxDimension.getHeight()));
    }

    public static final long getCenter(RoundRect $this$center) {
        return OffsetKt.Offset($this$center.getLeft() + ($this$center.getWidth() / 2.0f), $this$center.getTop() + ($this$center.getHeight() / 2.0f));
    }

    public static final boolean isSimple(RoundRect $this$isSimple) {
        if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs())) {
            if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isSimple.m3573getTopRightCornerRadiuskKHJgLs())) {
                if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isSimple.m3573getTopRightCornerRadiuskKHJgLs())) {
                    if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isSimple.m3571getBottomRightCornerRadiuskKHJgLs())) {
                        if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isSimple.m3571getBottomRightCornerRadiuskKHJgLs())) {
                            if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3497getXimpl($this$isSimple.m3570getBottomLeftCornerRadiuskKHJgLs())) {
                                if (CornerRadius.m3497getXimpl($this$isSimple.m3572getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m3498getYimpl($this$isSimple.m3570getBottomLeftCornerRadiuskKHJgLs())) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final RoundRect lerp(RoundRect start, RoundRect stop, float fraction) {
        return new RoundRect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), fraction), MathHelpersKt.lerp(start.getTop(), stop.getTop(), fraction), MathHelpersKt.lerp(start.getRight(), stop.getRight(), fraction), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), fraction), CornerRadiusKt.m3508lerp3Ry4LBc(start.m3572getTopLeftCornerRadiuskKHJgLs(), stop.m3572getTopLeftCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m3508lerp3Ry4LBc(start.m3573getTopRightCornerRadiuskKHJgLs(), stop.m3573getTopRightCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m3508lerp3Ry4LBc(start.m3571getBottomRightCornerRadiuskKHJgLs(), stop.m3571getBottomRightCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m3508lerp3Ry4LBc(start.m3570getBottomLeftCornerRadiuskKHJgLs(), stop.m3570getBottomLeftCornerRadiuskKHJgLs(), fraction), null);
    }
}
