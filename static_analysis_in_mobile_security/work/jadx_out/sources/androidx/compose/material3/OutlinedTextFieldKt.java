package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.Strings;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: OutlinedTextField.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aÖ\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u0010-\u001a¨\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u0010.\u001aÖ\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020/2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u00100\u001a¨\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020/2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u00101\u001a\u0080\u0002\u00102\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u00152\u0019\u0010\u0016\u001a\u0015\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000b¢\u0006\u0002\b\u00152\u0013\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0006\u0010#\u001a\u00020\u000f2\u0006\u00106\u001a\u0002072\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u00070\u000b2\u0011\u0010:\u001a\r\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u00152\u0013\u0010;\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0006\u0010<\u001a\u00020=H\u0001¢\u0006\u0002\u0010>\u001ar\u0010?\u001a\u00020%2\u0006\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020%2\u0006\u0010F\u001a\u00020%2\u0006\u0010G\u001a\u00020%2\u0006\u00106\u001a\u0002072\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u0002072\u0006\u0010<\u001a\u00020=H\u0002ø\u0001\u0000¢\u0006\u0004\bK\u0010L\u001aj\u0010M\u001a\u00020%2\u0006\u0010N\u001a\u00020%2\u0006\u0010O\u001a\u00020%2\u0006\u0010P\u001a\u00020%2\u0006\u0010Q\u001a\u00020%2\u0006\u0010R\u001a\u00020%2\u0006\u0010S\u001a\u00020%2\u0006\u0010T\u001a\u00020%2\u0006\u00106\u001a\u0002072\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u0002072\u0006\u0010<\u001a\u00020=H\u0002ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a&\u0010W\u001a\u00020\r*\u00020\r2\u0006\u0010X\u001a\u0002092\u0006\u0010<\u001a\u00020=H\u0000ø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a\u009a\u0001\u0010[\u001a\u00020\u0007*\u00020\\2\u0006\u0010]\u001a\u00020%2\u0006\u0010^\u001a\u00020%2\b\u0010_\u001a\u0004\u0018\u00010`2\b\u0010a\u001a\u0004\u0018\u00010`2\b\u0010b\u001a\u0004\u0018\u00010`2\b\u0010c\u001a\u0004\u0018\u00010`2\u0006\u0010d\u001a\u00020`2\b\u0010e\u001a\u0004\u0018\u00010`2\b\u0010f\u001a\u0004\u0018\u00010`2\u0006\u0010g\u001a\u00020`2\b\u0010h\u001a\u0004\u0018\u00010`2\u0006\u00106\u001a\u0002072\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010J\u001a\u0002072\u0006\u0010i\u001a\u00020j2\u0006\u0010<\u001a\u00020=H\u0002\u001a\u0014\u0010k\u001a\u00020%*\u00020%2\u0006\u0010l\u001a\u00020%H\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u0003\u001a\u00020\u0001X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0004\u0010\u0005\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006m"}, d2 = {"OutlinedTextFieldInnerPadding", "Landroidx/compose/ui/unit/Dp;", "F", "OutlinedTextFieldTopPadding", "getOutlinedTextFieldTopPadding", "()F", "OutlinedTextField", "", "value", "Landroidx/compose/ui/text/input/TextFieldValue;", "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "readOnly", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "label", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "isError", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "keyboardOptions", "Landroidx/compose/foundation/text/KeyboardOptions;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "singleLine", "maxLines", "", "minLines", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/TextFieldColors;", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "OutlinedTextFieldLayout", "textField", "leading", "trailing", "animationProgress", "", "onLabelMeasured", "Landroidx/compose/ui/geometry/Size;", "container", "supporting", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V", "calculateHeight", "leadingHeight", "trailingHeight", "prefixHeight", "suffixHeight", "textFieldHeight", "labelHeight", "placeholderHeight", "supportingHeight", "constraints", "Landroidx/compose/ui/unit/Constraints;", "density", "calculateHeight-mKXJcVc", "(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I", "calculateWidth", "leadingPlaceableWidth", "trailingPlaceableWidth", "prefixPlaceableWidth", "suffixPlaceableWidth", "textFieldPlaceableWidth", "labelPlaceableWidth", "placeholderPlaceableWidth", "calculateWidth-DHJA7U0", "(IIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I", "outlineCutout", "labelSize", "outlineCutout-12SF9DM", "(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;", "place", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "totalHeight", "width", "leadingPlaceable", "Landroidx/compose/ui/layout/Placeable;", "trailingPlaceable", "prefixPlaceable", "suffixPlaceable", "textFieldPlaceable", "labelPlaceable", "placeholderPlaceable", "containerPlaceable", "supportingPlaceable", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "substractConstraintSafely", "from", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class OutlinedTextFieldKt {
    private static final float OutlinedTextFieldInnerPadding = Dp.m6111constructorimpl(4);
    private static final float OutlinedTextFieldTopPadding = Dp.m6111constructorimpl(8);

    public static final void OutlinedTextField(final String value, final Function1<? super String, Unit> function1, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Function2<? super Composer, ? super Integer, Unit> function24, Function2<? super Composer, ? super Integer, Unit> function25, Function2<? super Composer, ? super Integer, Unit> function26, Function2<? super Composer, ? super Integer, Unit> function27, boolean isError, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, MutableInteractionSource interactionSource, Shape shape, TextFieldColors colors, Composer $composer, final int $changed, final int $changed1, final int $changed2, final int i) {
        int i2;
        int i3;
        Modifier modifier2;
        boolean enabled2;
        TextStyle textStyle2;
        Function2<? super Composer, ? super Integer, Unit> function28;
        Function2<? super Composer, ? super Integer, Unit> function29;
        Function2<? super Composer, ? super Integer, Unit> function210;
        Function2<? super Composer, ? super Integer, Unit> function211;
        Function2<? super Composer, ? super Integer, Unit> function212;
        Function2<? super Composer, ? super Integer, Unit> function213;
        Function2<? super Composer, ? super Integer, Unit> function214;
        boolean isError2;
        int maxLines2;
        int $dirty;
        int $dirty1;
        MutableInteractionSource interactionSource2;
        Shape shape2;
        Modifier modifier3;
        boolean enabled3;
        int $dirty2;
        MutableInteractionSource interactionSource3;
        Shape shape3;
        int $dirty12;
        TextFieldColors colors2;
        int $dirty22;
        boolean readOnly2;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        boolean singleLine2;
        int maxLines3;
        int minLines2;
        Object value$iv;
        Function2<? super Composer, ? super Integer, Unit> function215;
        int $dirty3;
        long textColor;
        TextStyle textStyle3;
        Modifier modifier4;
        boolean enabled4;
        Function2<? super Composer, ? super Integer, Unit> function216;
        boolean readOnly3;
        Function2<? super Composer, ? super Integer, Unit> function217;
        Function2<? super Composer, ? super Integer, Unit> function218;
        Function2<? super Composer, ? super Integer, Unit> function219;
        Function2<? super Composer, ? super Integer, Unit> function220;
        Function2<? super Composer, ? super Integer, Unit> function221;
        Function2<? super Composer, ? super Integer, Unit> function222;
        boolean isError3;
        TextFieldColors colors3;
        Composer $composer2 = $composer.startRestartGroup(-1922450045);
        ComposerKt.sourceInformation($composer2, "C(OutlinedTextField)P(21,11,10,1,14,19,6,12,7,20,13,17,18,3,22,5,4,16,8,9,2,15)147@8277L7,162@9029L39,163@9115L5,164@9178L8,172@9540L15,172@9474L2524:OutlinedTextField.kt#uh7d8r");
        int $dirty4 = $changed;
        int $dirty13 = $changed1;
        int $dirty23 = $changed2;
        if ((i & 1) != 0) {
            $dirty4 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty4 |= $composer2.changed(value) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty4 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty4 |= $composer2.changedInstance(function1) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty4 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty4 |= $composer2.changed(modifier) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty4 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty4 |= $composer2.changed(enabled) ? 2048 : 1024;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty4 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty4 |= $composer2.changed(readOnly) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty4 |= ((i & 32) == 0 && $composer2.changed(textStyle)) ? 131072 : 65536;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty4 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty4 |= $composer2.changedInstance(function2) ? 1048576 : 524288;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty4 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty4 |= $composer2.changedInstance(function22) ? 8388608 : 4194304;
        }
        int i9 = i & 256;
        if (i9 != 0) {
            $dirty4 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty4 |= $composer2.changedInstance(function23) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i10 = i & 512;
        if (i10 != 0) {
            $dirty4 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty4 |= $composer2.changedInstance(function24) ? 536870912 : 268435456;
        }
        int i11 = i & 1024;
        if (i11 != 0) {
            $dirty13 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty13 |= $composer2.changedInstance(function25) ? 4 : 2;
        }
        int i12 = i & 2048;
        if (i12 != 0) {
            $dirty13 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty13 |= $composer2.changedInstance(function26) ? 32 : 16;
        }
        int i13 = i & 4096;
        if (i13 != 0) {
            $dirty13 |= 384;
        } else if (($changed1 & 384) == 0) {
            $dirty13 |= $composer2.changedInstance(function27) ? 256 : 128;
        }
        int i14 = i & 8192;
        if (i14 != 0) {
            $dirty13 |= 3072;
            i2 = i14;
        } else {
            i2 = i14;
            if (($changed1 & 3072) == 0) {
                $dirty13 |= $composer2.changed(isError) ? 2048 : 1024;
            }
        }
        int i15 = i & 16384;
        if (i15 != 0) {
            $dirty13 |= 24576;
            i3 = i15;
        } else {
            i3 = i15;
            if (($changed1 & 24576) == 0) {
                $dirty13 |= $composer2.changed(visualTransformation) ? 16384 : 8192;
            }
        }
        int i16 = i & 32768;
        if (i16 != 0) {
            $dirty13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= $composer2.changed(keyboardOptions) ? 131072 : 65536;
        }
        int i17 = i & 65536;
        if (i17 != 0) {
            $dirty13 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty13 |= $composer2.changed(keyboardActions) ? 1048576 : 524288;
        }
        int i18 = i & 131072;
        if (i18 != 0) {
            $dirty13 |= 12582912;
        } else if (($changed1 & 12582912) == 0) {
            $dirty13 |= $composer2.changed(singleLine) ? 8388608 : 4194304;
        }
        if (($changed1 & 100663296) == 0) {
            $dirty13 |= ((i & 262144) == 0 && $composer2.changed(maxLines)) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i19 = i & 524288;
        if (i19 != 0) {
            $dirty13 |= 805306368;
        } else if (($changed1 & 805306368) == 0) {
            $dirty13 |= $composer2.changed(minLines) ? 536870912 : 268435456;
        }
        int i20 = i & 1048576;
        if (i20 != 0) {
            $dirty23 |= 6;
        } else if (($changed2 & 6) == 0) {
            $dirty23 |= $composer2.changed(interactionSource) ? 4 : 2;
        }
        if (($changed2 & 48) == 0) {
            $dirty23 |= ((i & 2097152) == 0 && $composer2.changed(shape)) ? 32 : 16;
        }
        if (($changed2 & 384) == 0) {
            $dirty23 |= ((i & 4194304) == 0 && $composer2.changed(colors)) ? 256 : 128;
        }
        if (($dirty4 & 306783379) == 306783378 && (306783379 & $dirty13) == 306783378 && ($dirty23 & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier;
            enabled4 = enabled;
            readOnly3 = readOnly;
            textStyle3 = textStyle;
            function222 = function2;
            function217 = function22;
            function218 = function23;
            function219 = function24;
            function220 = function25;
            function221 = function26;
            function216 = function27;
            isError3 = isError;
            visualTransformation2 = visualTransformation;
            keyboardOptions2 = keyboardOptions;
            keyboardActions2 = keyboardActions;
            singleLine2 = singleLine;
            maxLines3 = maxLines;
            minLines2 = minLines;
            interactionSource3 = interactionSource;
            shape3 = shape;
            colors3 = colors;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier;
                boolean enabled5 = i5 != 0 ? true : enabled;
                boolean readOnly4 = i6 != 0 ? false : readOnly;
                if ((i & 32) != 0) {
                    ProvidableCompositionLocal<TextStyle> localTextStyle = TextKt.getLocalTextStyle();
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer2.consume(localTextStyle);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    textStyle2 = (TextStyle) objConsume;
                    $dirty4 &= -458753;
                } else {
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    textStyle2 = textStyle;
                }
                function28 = i7 != 0 ? null : function2;
                function29 = i8 != 0 ? null : function22;
                function210 = i9 != 0 ? null : function23;
                function211 = i10 != 0 ? null : function24;
                function212 = i11 != 0 ? null : function25;
                function213 = i12 != 0 ? null : function26;
                function214 = i13 != 0 ? null : function27;
                isError2 = i2 != 0 ? false : isError;
                VisualTransformation visualTransformation3 = i3 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                KeyboardOptions keyboardOptions3 = i16 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions;
                KeyboardActions keyboardActions3 = i17 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions;
                boolean singleLine3 = i18 != 0 ? false : singleLine;
                if ((i & 262144) != 0) {
                    maxLines2 = singleLine3 ? 1 : Integer.MAX_VALUE;
                    $dirty13 &= -234881025;
                } else {
                    maxLines2 = maxLines;
                }
                int minLines3 = i19 != 0 ? 1 : minLines;
                if (i20 != 0) {
                    $dirty = $dirty4;
                    $composer2.startReplaceableGroup(1663535677);
                    ComposerKt.sourceInformation($composer2, "CC(remember):OutlinedTextField.kt#9igjgp");
                    Object it$iv = $composer2.rememberedValue();
                    $dirty1 = $dirty13;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer2.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    $composer2.endReplaceableGroup();
                } else {
                    $dirty = $dirty4;
                    $dirty1 = $dirty13;
                    interactionSource2 = interactionSource;
                }
                MutableInteractionSource interactionSource4 = interactionSource2;
                if ((2097152 & i) != 0) {
                    shape2 = OutlinedTextFieldDefaults.INSTANCE.getShape($composer2, 6);
                    $dirty23 &= -113;
                } else {
                    shape2 = shape;
                }
                if ((i & 4194304) != 0) {
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    shape3 = shape2;
                    $dirty12 = $dirty1;
                    colors2 = OutlinedTextFieldDefaults.INSTANCE.colors($composer2, 6);
                    $dirty22 = $dirty23 & (-897);
                    readOnly2 = readOnly4;
                    visualTransformation2 = visualTransformation3;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                } else {
                    Shape shape4 = shape2;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    shape3 = shape4;
                    $dirty12 = $dirty1;
                    colors2 = colors;
                    $dirty22 = $dirty23;
                    readOnly2 = readOnly4;
                    visualTransformation2 = visualTransformation3;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty4 &= -458753;
                }
                if ((262144 & i) != 0) {
                    $dirty13 &= -234881025;
                }
                if ((2097152 & i) != 0) {
                    $dirty23 &= -113;
                }
                if ((i & 4194304) != 0) {
                    $dirty23 &= -897;
                }
                textStyle2 = textStyle;
                function28 = function2;
                function29 = function22;
                function210 = function23;
                function211 = function24;
                function212 = function25;
                function213 = function26;
                function214 = function27;
                isError2 = isError;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                singleLine2 = singleLine;
                maxLines3 = maxLines;
                minLines2 = minLines;
                interactionSource3 = interactionSource;
                shape3 = shape;
                colors2 = colors;
                $dirty2 = $dirty4;
                $dirty12 = $dirty13;
                $dirty22 = $dirty23;
                modifier3 = modifier;
                enabled3 = enabled;
                readOnly2 = readOnly;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                function215 = function214;
                ComposerKt.traceEventStart(-1922450045, $dirty2, $dirty12, "androidx.compose.material3.OutlinedTextField (OutlinedTextField.kt:165)");
            } else {
                function215 = function214;
            }
            $composer2.startReplaceableGroup(1663535958);
            ComposerKt.sourceInformation($composer2, "*168@9338L46");
            long $this$takeOrElse_u2dDxMtmZc$iv = textStyle2.m5618getColor0d7_KjU();
            if ($this$takeOrElse_u2dDxMtmZc$iv != Color.INSTANCE.m3799getUnspecified0d7_KjU()) {
                $dirty3 = $dirty2;
                textColor = $this$takeOrElse_u2dDxMtmZc$iv;
            } else {
                $dirty3 = $dirty2;
                textColor = colors2.textColor$material3_release(enabled3, isError2, interactionSource3, $composer2, (($dirty2 >> 9) & 14) | (($dirty12 >> 6) & 112) | (($dirty22 << 6) & 896) | (($dirty22 << 3) & 7168)).getValue().m3773unboximpl();
            }
            $composer2.endReplaceableGroup();
            final TextStyle mergedTextStyle = textStyle2.merge(new TextStyle(textColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777214, (DefaultConstructorMarker) null));
            TextStyle textStyle4 = textStyle2;
            final TextFieldColors colors4 = colors2;
            final Function2<? super Composer, ? super Integer, Unit> function223 = function28;
            final Modifier modifier6 = modifier3;
            final boolean z = isError2;
            final boolean z2 = enabled3;
            final boolean z3 = readOnly2;
            final KeyboardOptions keyboardOptions4 = keyboardOptions2;
            final KeyboardActions keyboardActions4 = keyboardActions2;
            final boolean z4 = singleLine2;
            final int i21 = maxLines3;
            final int i22 = minLines2;
            final VisualTransformation visualTransformation4 = visualTransformation2;
            final MutableInteractionSource mutableInteractionSource = interactionSource3;
            final Function2<? super Composer, ? super Integer, Unit> function224 = function29;
            final Function2<? super Composer, ? super Integer, Unit> function225 = function210;
            final Function2<? super Composer, ? super Integer, Unit> function226 = function211;
            final Function2<? super Composer, ? super Integer, Unit> function227 = function212;
            final Function2<? super Composer, ? super Integer, Unit> function228 = function213;
            final Function2<? super Composer, ? super Integer, Unit> function229 = function215;
            final Shape shape5 = shape3;
            Modifier modifier7 = modifier3;
            boolean enabled6 = enabled3;
            CompositionLocalKt.CompositionLocalProvider(TextSelectionColorsKt.getLocalTextSelectionColors().provides(colors4.getSelectionColors($composer2, ($dirty22 >> 6) & 14)), ComposableLambdaKt.composableLambda($composer2, -1886965181, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer3, int $changed3) {
                    Modifier modifierM566paddingqDBjuR0$default;
                    ComposerKt.sourceInformation($composer3, "C184@10067L38,193@10486L20,173@9567L2425:OutlinedTextField.kt#uh7d8r");
                    if (($changed3 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1886965181, $changed3, -1, "androidx.compose.material3.OutlinedTextField.<anonymous> (OutlinedTextField.kt:173)");
                        }
                        if (function223 != null) {
                            modifierM566paddingqDBjuR0$default = PaddingKt.m566paddingqDBjuR0$default(SemanticsModifierKt.semantics(modifier6, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.2.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                }
                            }), 0.0f, OutlinedTextFieldKt.getOutlinedTextFieldTopPadding(), 0.0f, 0.0f, 13, null);
                        } else {
                            modifierM566paddingqDBjuR0$default = modifier6;
                        }
                        boolean z5 = z;
                        Strings.Companion companion = Strings.INSTANCE;
                        Modifier modifierM595defaultMinSizeVpY3zN4 = SizeKt.m595defaultMinSizeVpY3zN4(TextFieldImplKt.defaultErrorSemantics(modifierM566paddingqDBjuR0$default, z5, Strings_androidKt.m2306getStringNWtq28(Strings.m2237constructorimpl(androidx.compose.ui.R.string.default_error_message), $composer3, 0)), OutlinedTextFieldDefaults.INSTANCE.m2070getMinWidthD9Ej5fM(), OutlinedTextFieldDefaults.INSTANCE.m2069getMinHeightD9Ej5fM());
                        SolidColor solidColor = new SolidColor(colors4.cursorColor$material3_release(z, $composer3, 0).getValue().m3773unboximpl(), null);
                        String str = value;
                        Function1<String, Unit> function12 = function1;
                        boolean z6 = z2;
                        boolean z7 = z3;
                        TextStyle textStyle5 = mergedTextStyle;
                        KeyboardOptions keyboardOptions5 = keyboardOptions4;
                        KeyboardActions keyboardActions5 = keyboardActions4;
                        boolean z8 = z4;
                        int i23 = i21;
                        int i24 = i22;
                        VisualTransformation visualTransformation5 = visualTransformation4;
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        SolidColor solidColor2 = solidColor;
                        final String str2 = value;
                        final boolean z9 = z2;
                        final boolean z10 = z4;
                        final VisualTransformation visualTransformation6 = visualTransformation4;
                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource;
                        final boolean z11 = z;
                        final Function2<Composer, Integer, Unit> function230 = function223;
                        final Function2<Composer, Integer, Unit> function231 = function224;
                        final Function2<Composer, Integer, Unit> function232 = function225;
                        final Function2<Composer, Integer, Unit> function233 = function226;
                        final Function2<Composer, Integer, Unit> function234 = function227;
                        final Function2<Composer, Integer, Unit> function235 = function228;
                        final Function2<Composer, Integer, Unit> function236 = function229;
                        final TextFieldColors textFieldColors = colors4;
                        final Shape shape6 = shape5;
                        BasicTextFieldKt.BasicTextField(str, function12, modifierM595defaultMinSizeVpY3zN4, z6, z7, textStyle5, keyboardOptions5, keyboardActions5, z8, i23, i24, visualTransformation5, (Function1<? super TextLayoutResult, Unit>) null, mutableInteractionSource2, solidColor2, ComposableLambdaKt.composableLambda($composer3, 1474611661, true, new Function3<Function2<? super Composer, ? super Integer, ? extends Unit>, Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.2.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Function2<? super Composer, ? super Integer, ? extends Unit> function237, Composer composer, Integer num) {
                                invoke((Function2<? super Composer, ? super Integer, Unit>) function237, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Function2<? super Composer, ? super Integer, Unit> function237, Composer $composer4, int $changed4) {
                                ComposerKt.sourceInformation($composer4, "C202@10922L1046:OutlinedTextField.kt#uh7d8r");
                                int $dirty5 = $changed4;
                                if (($changed4 & 6) == 0) {
                                    $dirty5 |= $composer4.changedInstance(function237) ? 4 : 2;
                                }
                                int $dirty6 = $dirty5;
                                if (($dirty6 & 19) != 18 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1474611661, $dirty6, -1, "androidx.compose.material3.OutlinedTextField.<anonymous>.<anonymous> (OutlinedTextField.kt:202)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    String str3 = str2;
                                    boolean z12 = z9;
                                    boolean z13 = z10;
                                    VisualTransformation visualTransformation7 = visualTransformation6;
                                    MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                    boolean z14 = z11;
                                    Function2<Composer, Integer, Unit> function238 = function230;
                                    Function2<Composer, Integer, Unit> function239 = function231;
                                    Function2<Composer, Integer, Unit> function240 = function232;
                                    Function2<Composer, Integer, Unit> function241 = function233;
                                    Function2<Composer, Integer, Unit> function242 = function234;
                                    Function2<Composer, Integer, Unit> function243 = function235;
                                    Function2<Composer, Integer, Unit> function244 = function236;
                                    TextFieldColors textFieldColors2 = textFieldColors;
                                    final boolean z15 = z9;
                                    final boolean z16 = z11;
                                    final MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource3;
                                    final TextFieldColors textFieldColors3 = textFieldColors;
                                    final Shape shape7 = shape6;
                                    outlinedTextFieldDefaults.DecorationBox(str3, function237, z12, z13, visualTransformation7, mutableInteractionSource4, z14, function238, function239, function240, function241, function242, function243, function244, textFieldColors2, null, ComposableLambdaKt.composableLambda($composer4, 2108828640, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.2.2.1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(2);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                            invoke(composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(Composer $composer5, int $changed5) {
                                            ComposerKt.sourceInformation($composer5, "C219@11698L230:OutlinedTextField.kt#uh7d8r");
                                            if (($changed5 & 3) != 2 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(2108828640, $changed5, -1, "androidx.compose.material3.OutlinedTextField.<anonymous>.<anonymous>.<anonymous> (OutlinedTextField.kt:219)");
                                                }
                                                OutlinedTextFieldDefaults.INSTANCE.m2065ContainerBoxnbWgWpA(z15, z16, mutableInteractionSource5, textFieldColors3, shape7, 0.0f, 0.0f, $composer5, 12582912, 96);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, ($dirty6 << 3) & 112, 14155776, 32768);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }), $composer3, 0, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 4096);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, ProvidedValue.$stable | 0 | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            textStyle3 = textStyle4;
            modifier4 = modifier7;
            enabled4 = enabled6;
            function216 = function215;
            readOnly3 = readOnly2;
            function217 = function29;
            function218 = function210;
            function219 = function211;
            function220 = function212;
            function221 = function213;
            function222 = function28;
            isError3 = isError2;
            colors3 = colors4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier8 = modifier4;
            final boolean z5 = enabled4;
            final boolean z6 = readOnly3;
            final TextStyle textStyle5 = textStyle3;
            final Function2<? super Composer, ? super Integer, Unit> function230 = function222;
            final Function2<? super Composer, ? super Integer, Unit> function231 = function217;
            final Function2<? super Composer, ? super Integer, Unit> function232 = function218;
            final Function2<? super Composer, ? super Integer, Unit> function233 = function219;
            final Function2<? super Composer, ? super Integer, Unit> function234 = function220;
            final Function2<? super Composer, ? super Integer, Unit> function235 = function221;
            final Function2<? super Composer, ? super Integer, Unit> function236 = function216;
            final boolean z7 = isError3;
            final VisualTransformation visualTransformation5 = visualTransformation2;
            final KeyboardOptions keyboardOptions5 = keyboardOptions2;
            final KeyboardActions keyboardActions5 = keyboardActions2;
            final boolean z8 = singleLine2;
            final int i23 = maxLines3;
            final int i24 = minLines2;
            final MutableInteractionSource mutableInteractionSource2 = interactionSource3;
            final Shape shape6 = shape3;
            final TextFieldColors textFieldColors = colors3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i25) {
                    OutlinedTextFieldKt.OutlinedTextField(value, function1, modifier8, z5, z6, textStyle5, function230, function231, function232, function233, function234, function235, function236, z7, visualTransformation5, keyboardOptions5, keyboardActions5, z8, i23, i24, mutableInteractionSource2, shape6, textFieldColors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), RecomposeScopeImplKt.updateChangedFlags($changed2), i);
                }
            });
        }
    }

    public static final void OutlinedTextField(final TextFieldValue value, final Function1<? super TextFieldValue, Unit> function1, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Function2<? super Composer, ? super Integer, Unit> function24, Function2<? super Composer, ? super Integer, Unit> function25, Function2<? super Composer, ? super Integer, Unit> function26, Function2<? super Composer, ? super Integer, Unit> function27, boolean isError, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, MutableInteractionSource interactionSource, Shape shape, TextFieldColors colors, Composer $composer, final int $changed, final int $changed1, final int $changed2, final int i) {
        int i2;
        int i3;
        Modifier modifier2;
        boolean enabled2;
        TextStyle textStyle2;
        Function2<? super Composer, ? super Integer, Unit> function28;
        Function2<? super Composer, ? super Integer, Unit> function29;
        Function2<? super Composer, ? super Integer, Unit> function210;
        Function2<? super Composer, ? super Integer, Unit> function211;
        Function2<? super Composer, ? super Integer, Unit> function212;
        Function2<? super Composer, ? super Integer, Unit> function213;
        Function2<? super Composer, ? super Integer, Unit> function214;
        boolean isError2;
        int maxLines2;
        int $dirty;
        int $dirty1;
        MutableInteractionSource interactionSource2;
        Shape shape2;
        Modifier modifier3;
        boolean enabled3;
        int $dirty2;
        MutableInteractionSource interactionSource3;
        Shape shape3;
        int $dirty12;
        TextFieldColors colors2;
        int $dirty22;
        boolean readOnly2;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        boolean singleLine2;
        int maxLines3;
        int minLines2;
        Object value$iv;
        Function2<? super Composer, ? super Integer, Unit> function215;
        int $dirty3;
        long textColor;
        TextStyle textStyle3;
        Modifier modifier4;
        boolean enabled4;
        Function2<? super Composer, ? super Integer, Unit> function216;
        boolean readOnly3;
        Function2<? super Composer, ? super Integer, Unit> function217;
        Function2<? super Composer, ? super Integer, Unit> function218;
        Function2<? super Composer, ? super Integer, Unit> function219;
        Function2<? super Composer, ? super Integer, Unit> function220;
        Function2<? super Composer, ? super Integer, Unit> function221;
        Function2<? super Composer, ? super Integer, Unit> function222;
        boolean isError3;
        TextFieldColors colors3;
        Composer $composer2 = $composer.startRestartGroup(-1570442800);
        ComposerKt.sourceInformation($composer2, "C(OutlinedTextField)P(21,11,10,1,14,19,6,12,7,20,13,17,18,3,22,5,4,16,8,9,2,15)307@17107L7,322@17859L39,323@17945L5,324@18008L8,332@18370L15,332@18304L2529:OutlinedTextField.kt#uh7d8r");
        int $dirty4 = $changed;
        int $dirty13 = $changed1;
        int $dirty23 = $changed2;
        if ((i & 1) != 0) {
            $dirty4 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty4 |= $composer2.changed(value) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty4 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty4 |= $composer2.changedInstance(function1) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty4 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty4 |= $composer2.changed(modifier) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty4 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty4 |= $composer2.changed(enabled) ? 2048 : 1024;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty4 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty4 |= $composer2.changed(readOnly) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty4 |= ((i & 32) == 0 && $composer2.changed(textStyle)) ? 131072 : 65536;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty4 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty4 |= $composer2.changedInstance(function2) ? 1048576 : 524288;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty4 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty4 |= $composer2.changedInstance(function22) ? 8388608 : 4194304;
        }
        int i9 = i & 256;
        if (i9 != 0) {
            $dirty4 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty4 |= $composer2.changedInstance(function23) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i10 = i & 512;
        if (i10 != 0) {
            $dirty4 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty4 |= $composer2.changedInstance(function24) ? 536870912 : 268435456;
        }
        int i11 = i & 1024;
        if (i11 != 0) {
            $dirty13 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty13 |= $composer2.changedInstance(function25) ? 4 : 2;
        }
        int i12 = i & 2048;
        if (i12 != 0) {
            $dirty13 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty13 |= $composer2.changedInstance(function26) ? 32 : 16;
        }
        int i13 = i & 4096;
        if (i13 != 0) {
            $dirty13 |= 384;
        } else if (($changed1 & 384) == 0) {
            $dirty13 |= $composer2.changedInstance(function27) ? 256 : 128;
        }
        int i14 = i & 8192;
        if (i14 != 0) {
            $dirty13 |= 3072;
            i2 = i14;
        } else {
            i2 = i14;
            if (($changed1 & 3072) == 0) {
                $dirty13 |= $composer2.changed(isError) ? 2048 : 1024;
            }
        }
        int i15 = i & 16384;
        if (i15 != 0) {
            $dirty13 |= 24576;
            i3 = i15;
        } else {
            i3 = i15;
            if (($changed1 & 24576) == 0) {
                $dirty13 |= $composer2.changed(visualTransformation) ? 16384 : 8192;
            }
        }
        int i16 = i & 32768;
        if (i16 != 0) {
            $dirty13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= $composer2.changed(keyboardOptions) ? 131072 : 65536;
        }
        int i17 = i & 65536;
        if (i17 != 0) {
            $dirty13 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty13 |= $composer2.changed(keyboardActions) ? 1048576 : 524288;
        }
        int i18 = i & 131072;
        if (i18 != 0) {
            $dirty13 |= 12582912;
        } else if (($changed1 & 12582912) == 0) {
            $dirty13 |= $composer2.changed(singleLine) ? 8388608 : 4194304;
        }
        if (($changed1 & 100663296) == 0) {
            $dirty13 |= ((i & 262144) == 0 && $composer2.changed(maxLines)) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i19 = i & 524288;
        if (i19 != 0) {
            $dirty13 |= 805306368;
        } else if (($changed1 & 805306368) == 0) {
            $dirty13 |= $composer2.changed(minLines) ? 536870912 : 268435456;
        }
        int i20 = i & 1048576;
        if (i20 != 0) {
            $dirty23 |= 6;
        } else if (($changed2 & 6) == 0) {
            $dirty23 |= $composer2.changed(interactionSource) ? 4 : 2;
        }
        if (($changed2 & 48) == 0) {
            $dirty23 |= ((i & 2097152) == 0 && $composer2.changed(shape)) ? 32 : 16;
        }
        if (($changed2 & 384) == 0) {
            $dirty23 |= ((i & 4194304) == 0 && $composer2.changed(colors)) ? 256 : 128;
        }
        if (($dirty4 & 306783379) == 306783378 && (306783379 & $dirty13) == 306783378 && ($dirty23 & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier4 = modifier;
            enabled4 = enabled;
            readOnly3 = readOnly;
            textStyle3 = textStyle;
            function222 = function2;
            function217 = function22;
            function218 = function23;
            function219 = function24;
            function220 = function25;
            function221 = function26;
            function216 = function27;
            isError3 = isError;
            visualTransformation2 = visualTransformation;
            keyboardOptions2 = keyboardOptions;
            keyboardActions2 = keyboardActions;
            singleLine2 = singleLine;
            maxLines3 = maxLines;
            minLines2 = minLines;
            interactionSource3 = interactionSource;
            shape3 = shape;
            colors3 = colors;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier;
                boolean enabled5 = i5 != 0 ? true : enabled;
                boolean readOnly4 = i6 != 0 ? false : readOnly;
                if ((i & 32) != 0) {
                    ProvidableCompositionLocal<TextStyle> localTextStyle = TextKt.getLocalTextStyle();
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer2.consume(localTextStyle);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    textStyle2 = (TextStyle) objConsume;
                    $dirty4 &= -458753;
                } else {
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    textStyle2 = textStyle;
                }
                function28 = i7 != 0 ? null : function2;
                function29 = i8 != 0 ? null : function22;
                function210 = i9 != 0 ? null : function23;
                function211 = i10 != 0 ? null : function24;
                function212 = i11 != 0 ? null : function25;
                function213 = i12 != 0 ? null : function26;
                function214 = i13 != 0 ? null : function27;
                isError2 = i2 != 0 ? false : isError;
                VisualTransformation visualTransformation3 = i3 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                KeyboardOptions keyboardOptions3 = i16 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions;
                KeyboardActions keyboardActions3 = i17 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions;
                boolean singleLine3 = i18 != 0 ? false : singleLine;
                if ((i & 262144) != 0) {
                    maxLines2 = singleLine3 ? 1 : Integer.MAX_VALUE;
                    $dirty13 &= -234881025;
                } else {
                    maxLines2 = maxLines;
                }
                int minLines3 = i19 != 0 ? 1 : minLines;
                if (i20 != 0) {
                    $dirty = $dirty4;
                    $composer2.startReplaceableGroup(1663544507);
                    ComposerKt.sourceInformation($composer2, "CC(remember):OutlinedTextField.kt#9igjgp");
                    Object it$iv = $composer2.rememberedValue();
                    $dirty1 = $dirty13;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer2.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    $composer2.endReplaceableGroup();
                } else {
                    $dirty = $dirty4;
                    $dirty1 = $dirty13;
                    interactionSource2 = interactionSource;
                }
                MutableInteractionSource interactionSource4 = interactionSource2;
                if ((2097152 & i) != 0) {
                    shape2 = OutlinedTextFieldDefaults.INSTANCE.getShape($composer2, 6);
                    $dirty23 &= -113;
                } else {
                    shape2 = shape;
                }
                if ((i & 4194304) != 0) {
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    shape3 = shape2;
                    $dirty12 = $dirty1;
                    colors2 = OutlinedTextFieldDefaults.INSTANCE.colors($composer2, 6);
                    $dirty22 = $dirty23 & (-897);
                    readOnly2 = readOnly4;
                    visualTransformation2 = visualTransformation3;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                } else {
                    Shape shape4 = shape2;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    shape3 = shape4;
                    $dirty12 = $dirty1;
                    colors2 = colors;
                    $dirty22 = $dirty23;
                    readOnly2 = readOnly4;
                    visualTransformation2 = visualTransformation3;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty4 &= -458753;
                }
                if ((262144 & i) != 0) {
                    $dirty13 &= -234881025;
                }
                if ((2097152 & i) != 0) {
                    $dirty23 &= -113;
                }
                if ((i & 4194304) != 0) {
                    $dirty23 &= -897;
                }
                textStyle2 = textStyle;
                function28 = function2;
                function29 = function22;
                function210 = function23;
                function211 = function24;
                function212 = function25;
                function213 = function26;
                function214 = function27;
                isError2 = isError;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                singleLine2 = singleLine;
                maxLines3 = maxLines;
                minLines2 = minLines;
                interactionSource3 = interactionSource;
                shape3 = shape;
                colors2 = colors;
                $dirty2 = $dirty4;
                $dirty12 = $dirty13;
                $dirty22 = $dirty23;
                modifier3 = modifier;
                enabled3 = enabled;
                readOnly2 = readOnly;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                function215 = function214;
                ComposerKt.traceEventStart(-1570442800, $dirty2, $dirty12, "androidx.compose.material3.OutlinedTextField (OutlinedTextField.kt:325)");
            } else {
                function215 = function214;
            }
            $composer2.startReplaceableGroup(1663544788);
            ComposerKt.sourceInformation($composer2, "*328@18168L46");
            long $this$takeOrElse_u2dDxMtmZc$iv = textStyle2.m5618getColor0d7_KjU();
            if ($this$takeOrElse_u2dDxMtmZc$iv != Color.INSTANCE.m3799getUnspecified0d7_KjU()) {
                $dirty3 = $dirty2;
                textColor = $this$takeOrElse_u2dDxMtmZc$iv;
            } else {
                $dirty3 = $dirty2;
                textColor = colors2.textColor$material3_release(enabled3, isError2, interactionSource3, $composer2, (($dirty2 >> 9) & 14) | (($dirty12 >> 6) & 112) | (($dirty22 << 6) & 896) | (($dirty22 << 3) & 7168)).getValue().m3773unboximpl();
            }
            $composer2.endReplaceableGroup();
            final TextStyle mergedTextStyle = textStyle2.merge(new TextStyle(textColor, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777214, (DefaultConstructorMarker) null));
            TextStyle textStyle4 = textStyle2;
            final TextFieldColors colors4 = colors2;
            final Function2<? super Composer, ? super Integer, Unit> function223 = function28;
            final Modifier modifier6 = modifier3;
            final boolean z = isError2;
            final boolean z2 = enabled3;
            final boolean z3 = readOnly2;
            final KeyboardOptions keyboardOptions4 = keyboardOptions2;
            final KeyboardActions keyboardActions4 = keyboardActions2;
            final boolean z4 = singleLine2;
            final int i21 = maxLines3;
            final int i22 = minLines2;
            final VisualTransformation visualTransformation4 = visualTransformation2;
            final MutableInteractionSource mutableInteractionSource = interactionSource3;
            final Function2<? super Composer, ? super Integer, Unit> function224 = function29;
            final Function2<? super Composer, ? super Integer, Unit> function225 = function210;
            final Function2<? super Composer, ? super Integer, Unit> function226 = function211;
            final Function2<? super Composer, ? super Integer, Unit> function227 = function212;
            final Function2<? super Composer, ? super Integer, Unit> function228 = function213;
            final Function2<? super Composer, ? super Integer, Unit> function229 = function215;
            final Shape shape5 = shape3;
            Modifier modifier7 = modifier3;
            boolean enabled6 = enabled3;
            CompositionLocalKt.CompositionLocalProvider(TextSelectionColorsKt.getLocalTextSelectionColors().provides(colors4.getSelectionColors($composer2, ($dirty22 >> 6) & 14)), ComposableLambdaKt.composableLambda($composer2, 1830921872, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer3, int $changed3) {
                    Modifier modifierM566paddingqDBjuR0$default;
                    ComposerKt.sourceInformation($composer3, "C344@18897L38,353@19316L20,333@18397L2430:OutlinedTextField.kt#uh7d8r");
                    if (($changed3 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1830921872, $changed3, -1, "androidx.compose.material3.OutlinedTextField.<anonymous> (OutlinedTextField.kt:333)");
                        }
                        if (function223 != null) {
                            modifierM566paddingqDBjuR0$default = PaddingKt.m566paddingqDBjuR0$default(SemanticsModifierKt.semantics(modifier6, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.5.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                }
                            }), 0.0f, OutlinedTextFieldKt.getOutlinedTextFieldTopPadding(), 0.0f, 0.0f, 13, null);
                        } else {
                            modifierM566paddingqDBjuR0$default = modifier6;
                        }
                        boolean z5 = z;
                        Strings.Companion companion = Strings.INSTANCE;
                        Modifier modifierM595defaultMinSizeVpY3zN4 = SizeKt.m595defaultMinSizeVpY3zN4(TextFieldImplKt.defaultErrorSemantics(modifierM566paddingqDBjuR0$default, z5, Strings_androidKt.m2306getStringNWtq28(Strings.m2237constructorimpl(androidx.compose.ui.R.string.default_error_message), $composer3, 0)), OutlinedTextFieldDefaults.INSTANCE.m2070getMinWidthD9Ej5fM(), OutlinedTextFieldDefaults.INSTANCE.m2069getMinHeightD9Ej5fM());
                        SolidColor solidColor = new SolidColor(colors4.cursorColor$material3_release(z, $composer3, 0).getValue().m3773unboximpl(), null);
                        TextFieldValue textFieldValue = value;
                        Function1<TextFieldValue, Unit> function12 = function1;
                        boolean z6 = z2;
                        boolean z7 = z3;
                        TextStyle textStyle5 = mergedTextStyle;
                        KeyboardOptions keyboardOptions5 = keyboardOptions4;
                        KeyboardActions keyboardActions5 = keyboardActions4;
                        boolean z8 = z4;
                        int i23 = i21;
                        int i24 = i22;
                        VisualTransformation visualTransformation5 = visualTransformation4;
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        SolidColor solidColor2 = solidColor;
                        final TextFieldValue textFieldValue2 = value;
                        final boolean z9 = z2;
                        final boolean z10 = z4;
                        final VisualTransformation visualTransformation6 = visualTransformation4;
                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource;
                        final boolean z11 = z;
                        final Function2<Composer, Integer, Unit> function230 = function223;
                        final Function2<Composer, Integer, Unit> function231 = function224;
                        final Function2<Composer, Integer, Unit> function232 = function225;
                        final Function2<Composer, Integer, Unit> function233 = function226;
                        final Function2<Composer, Integer, Unit> function234 = function227;
                        final Function2<Composer, Integer, Unit> function235 = function228;
                        final Function2<Composer, Integer, Unit> function236 = function229;
                        final TextFieldColors textFieldColors = colors4;
                        final Shape shape6 = shape5;
                        BasicTextFieldKt.BasicTextField(textFieldValue, function12, modifierM595defaultMinSizeVpY3zN4, z6, z7, textStyle5, keyboardOptions5, keyboardActions5, z8, i23, i24, visualTransformation5, (Function1<? super TextLayoutResult, Unit>) null, mutableInteractionSource2, solidColor2, ComposableLambdaKt.composableLambda($composer3, -757328870, true, new Function3<Function2<? super Composer, ? super Integer, ? extends Unit>, Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.5.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Function2<? super Composer, ? super Integer, ? extends Unit> function237, Composer composer, Integer num) {
                                invoke((Function2<? super Composer, ? super Integer, Unit>) function237, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Function2<? super Composer, ? super Integer, Unit> function237, Composer $composer4, int $changed4) {
                                ComposerKt.sourceInformation($composer4, "C362@19752L1051:OutlinedTextField.kt#uh7d8r");
                                int $dirty5 = $changed4;
                                if (($changed4 & 6) == 0) {
                                    $dirty5 |= $composer4.changedInstance(function237) ? 4 : 2;
                                }
                                int $dirty6 = $dirty5;
                                if (($dirty6 & 19) == 18 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-757328870, $dirty6, -1, "androidx.compose.material3.OutlinedTextField.<anonymous>.<anonymous> (OutlinedTextField.kt:362)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                String text = textFieldValue2.getText();
                                boolean z12 = z9;
                                boolean z13 = z10;
                                VisualTransformation visualTransformation7 = visualTransformation6;
                                MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                boolean z14 = z11;
                                Function2<Composer, Integer, Unit> function238 = function230;
                                Function2<Composer, Integer, Unit> function239 = function231;
                                Function2<Composer, Integer, Unit> function240 = function232;
                                Function2<Composer, Integer, Unit> function241 = function233;
                                Function2<Composer, Integer, Unit> function242 = function234;
                                Function2<Composer, Integer, Unit> function243 = function235;
                                Function2<Composer, Integer, Unit> function244 = function236;
                                TextFieldColors textFieldColors2 = textFieldColors;
                                final boolean z15 = z9;
                                final boolean z16 = z11;
                                final MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource3;
                                final TextFieldColors textFieldColors3 = textFieldColors;
                                final Shape shape7 = shape6;
                                outlinedTextFieldDefaults.DecorationBox(text, function237, z12, z13, visualTransformation7, mutableInteractionSource4, z14, function238, function239, function240, function241, function242, function243, function244, textFieldColors2, null, ComposableLambdaKt.composableLambda($composer4, 255570733, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.5.2.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                        invoke(composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer $composer5, int $changed5) {
                                        ComposerKt.sourceInformation($composer5, "C379@20533L230:OutlinedTextField.kt#uh7d8r");
                                        if (($changed5 & 3) != 2 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(255570733, $changed5, -1, "androidx.compose.material3.OutlinedTextField.<anonymous>.<anonymous>.<anonymous> (OutlinedTextField.kt:379)");
                                            }
                                            OutlinedTextFieldDefaults.INSTANCE.m2065ContainerBoxnbWgWpA(z15, z16, mutableInteractionSource5, textFieldColors3, shape7, 0.0f, 0.0f, $composer5, 12582912, 96);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, ($dirty6 << 3) & 112, 14155776, 32768);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), $composer3, 0, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 4096);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, ProvidedValue.$stable | 0 | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            textStyle3 = textStyle4;
            modifier4 = modifier7;
            enabled4 = enabled6;
            function216 = function215;
            readOnly3 = readOnly2;
            function217 = function29;
            function218 = function210;
            function219 = function211;
            function220 = function212;
            function221 = function213;
            function222 = function28;
            isError3 = isError2;
            colors3 = colors4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier8 = modifier4;
            final boolean z5 = enabled4;
            final boolean z6 = readOnly3;
            final TextStyle textStyle5 = textStyle3;
            final Function2<? super Composer, ? super Integer, Unit> function230 = function222;
            final Function2<? super Composer, ? super Integer, Unit> function231 = function217;
            final Function2<? super Composer, ? super Integer, Unit> function232 = function218;
            final Function2<? super Composer, ? super Integer, Unit> function233 = function219;
            final Function2<? super Composer, ? super Integer, Unit> function234 = function220;
            final Function2<? super Composer, ? super Integer, Unit> function235 = function221;
            final Function2<? super Composer, ? super Integer, Unit> function236 = function216;
            final boolean z7 = isError3;
            final VisualTransformation visualTransformation5 = visualTransformation2;
            final KeyboardOptions keyboardOptions5 = keyboardOptions2;
            final KeyboardActions keyboardActions5 = keyboardActions2;
            final boolean z8 = singleLine2;
            final int i23 = maxLines3;
            final int i24 = minLines2;
            final MutableInteractionSource mutableInteractionSource2 = interactionSource3;
            final Shape shape6 = shape3;
            final TextFieldColors textFieldColors = colors3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i25) {
                    OutlinedTextFieldKt.OutlinedTextField(value, function1, modifier8, z5, z6, textStyle5, function230, function231, function232, function233, function234, function235, function236, z7, visualTransformation5, keyboardOptions5, keyboardActions5, z8, i23, i24, mutableInteractionSource2, shape6, textFieldColors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), RecomposeScopeImplKt.updateChangedFlags($changed2), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    public static final /* synthetic */ void OutlinedTextField(final String value, final Function1 onValueChange, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, Function2 label, Function2 placeholder, Function2 leadingIcon, Function2 trailingIcon, Function2 supportingText, boolean isError, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, MutableInteractionSource interactionSource, Shape shape, TextFieldColors colors, Composer $composer, final int $changed, final int $changed1, final int $changed2, final int i) {
        int i2;
        Modifier modifier2;
        boolean enabled2;
        boolean readOnly2;
        TextStyle textStyle2;
        Function2 label2;
        Function2 placeholder2;
        Function2 leadingIcon2;
        Function2 trailingIcon2;
        Function2 supportingText2;
        boolean isError2;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int maxLines2;
        int $dirty;
        TextStyle textStyle3;
        MutableInteractionSource interactionSource2;
        Shape shape2;
        Modifier modifier3;
        boolean enabled3;
        int $dirty2;
        MutableInteractionSource interactionSource3;
        int $dirty1;
        TextFieldColors colors2;
        int $dirty22;
        Shape shape3;
        boolean singleLine2;
        int maxLines3;
        int minLines2;
        boolean readOnly3;
        TextStyle textStyle4;
        Object value$iv;
        Composer $composer2;
        KeyboardActions keyboardActions3;
        KeyboardActions keyboardActions4;
        Modifier modifier4;
        boolean enabled4;
        boolean readOnly4;
        TextStyle textStyle5;
        Function2 leadingIcon3;
        Function2 placeholder3;
        Function2 trailingIcon3;
        Function2 supportingText3;
        boolean isError3;
        VisualTransformation visualTransformation3;
        KeyboardOptions keyboardOptions3;
        Function2 label3;
        Composer $composer3 = $composer.startRestartGroup(-1575225237);
        ComposerKt.sourceInformation($composer3, "C(OutlinedTextField)P(19,11,10,1,13,17,6,12,7,18,16,3,20,5,4,15,8,9,2,14)402@21186L7,415@21846L39,416@21932L5,417@21995L8,419@22012L771:OutlinedTextField.kt#uh7d8r");
        int $dirty3 = $changed;
        int $dirty12 = $changed1;
        int $dirty23 = $changed2;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= $composer3.changed(value) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changedInstance(onValueChange) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty3 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty3 |= $composer3.changed(modifier) ? 256 : 128;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty3 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty3 |= $composer3.changed(enabled) ? 2048 : 1024;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty3 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty3 |= $composer3.changed(readOnly) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty3 |= ((i & 32) == 0 && $composer3.changed(textStyle)) ? 131072 : 65536;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty3 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty3 |= $composer3.changedInstance(label) ? 1048576 : 524288;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty3 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty3 |= $composer3.changedInstance(placeholder) ? 8388608 : 4194304;
        }
        int i8 = i & 256;
        if (i8 != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer3.changedInstance(leadingIcon) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i9 = i & 512;
        if (i9 != 0) {
            $dirty3 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty3 |= $composer3.changedInstance(trailingIcon) ? 536870912 : 268435456;
        }
        int i10 = i & 1024;
        if (i10 != 0) {
            $dirty12 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty12 |= $composer3.changedInstance(supportingText) ? 4 : 2;
        }
        int i11 = i & 2048;
        if (i11 != 0) {
            $dirty12 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty12 |= $composer3.changed(isError) ? 32 : 16;
        }
        int i12 = i & 4096;
        if (i12 != 0) {
            $dirty12 |= 384;
        } else if (($changed1 & 384) == 0) {
            $dirty12 |= $composer3.changed(visualTransformation) ? 256 : 128;
        }
        int i13 = i & 8192;
        if (i13 != 0) {
            $dirty12 |= 3072;
        } else if (($changed1 & 3072) == 0) {
            $dirty12 |= $composer3.changed(keyboardOptions) ? 2048 : 1024;
        }
        int i14 = i & 16384;
        if (i14 != 0) {
            $dirty12 |= 24576;
            i2 = i14;
        } else {
            i2 = i14;
            if (($changed1 & 24576) == 0) {
                $dirty12 |= $composer3.changed(keyboardActions) ? 16384 : 8192;
            }
        }
        int i15 = i & 32768;
        if (i15 != 0) {
            $dirty12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty12 |= $composer3.changed(singleLine) ? 131072 : 65536;
        }
        if (($changed1 & 1572864) == 0) {
            $dirty12 |= ((i & 65536) == 0 && $composer3.changed(maxLines)) ? 1048576 : 524288;
        }
        int i16 = i & 131072;
        if (i16 != 0) {
            $dirty12 |= 12582912;
        } else if (($changed1 & 12582912) == 0) {
            $dirty12 |= $composer3.changed(minLines) ? 8388608 : 4194304;
        }
        int i17 = i & 262144;
        if (i17 != 0) {
            $dirty12 |= 100663296;
        } else if (($changed1 & 100663296) == 0) {
            $dirty12 |= $composer3.changed(interactionSource) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($changed1 & 805306368) == 0) {
            $dirty12 |= ((i & 524288) == 0 && $composer3.changed(shape)) ? 536870912 : 268435456;
        }
        if (($changed2 & 6) == 0) {
            $dirty23 |= ((i & 1048576) == 0 && $composer3.changed(colors)) ? 4 : 2;
        }
        if (($dirty3 & 306783379) == 306783378 && (306783379 & $dirty12) == 306783378 && ($dirty23 & 3) == 2 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier;
            enabled4 = enabled;
            readOnly4 = readOnly;
            textStyle5 = textStyle;
            label3 = label;
            placeholder3 = placeholder;
            leadingIcon3 = leadingIcon;
            trailingIcon3 = trailingIcon;
            supportingText3 = supportingText;
            isError3 = isError;
            visualTransformation3 = visualTransformation;
            keyboardOptions3 = keyboardOptions;
            keyboardActions4 = keyboardActions;
            singleLine2 = singleLine;
            maxLines3 = maxLines;
            minLines2 = minLines;
            interactionSource3 = interactionSource;
            shape3 = shape;
            colors2 = colors;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier;
                boolean enabled5 = i4 != 0 ? true : enabled;
                boolean readOnly5 = i5 != 0 ? false : readOnly;
                if ((i & 32) != 0) {
                    modifier2 = modifier5;
                    ProvidableCompositionLocal<TextStyle> localTextStyle = TextKt.getLocalTextStyle();
                    enabled2 = enabled5;
                    readOnly2 = readOnly5;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(localTextStyle);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    textStyle2 = (TextStyle) objConsume;
                    $dirty3 &= -458753;
                } else {
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    readOnly2 = readOnly5;
                    textStyle2 = textStyle;
                }
                label2 = i6 != 0 ? null : label;
                placeholder2 = i7 != 0 ? null : placeholder;
                leadingIcon2 = i8 != 0 ? null : leadingIcon;
                trailingIcon2 = i9 != 0 ? null : trailingIcon;
                supportingText2 = i10 != 0 ? null : supportingText;
                isError2 = i11 != 0 ? false : isError;
                visualTransformation2 = i12 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                keyboardOptions2 = i13 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions;
                keyboardActions2 = i2 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions;
                boolean singleLine3 = i15 != 0 ? false : singleLine;
                if ((i & 65536) != 0) {
                    maxLines2 = singleLine3 ? 1 : Integer.MAX_VALUE;
                    $dirty12 &= -3670017;
                } else {
                    maxLines2 = maxLines;
                }
                int minLines3 = i16 != 0 ? 1 : minLines;
                if (i17 != 0) {
                    $dirty = $dirty3;
                    $composer3.startReplaceableGroup(1663548494);
                    ComposerKt.sourceInformation($composer3, "CC(remember):OutlinedTextField.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    textStyle3 = textStyle2;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    $composer3.endReplaceableGroup();
                } else {
                    $dirty = $dirty3;
                    textStyle3 = textStyle2;
                    interactionSource2 = interactionSource;
                }
                MutableInteractionSource interactionSource4 = interactionSource2;
                if ((i & 524288) != 0) {
                    shape2 = OutlinedTextFieldDefaults.INSTANCE.getShape($composer3, 6);
                    $dirty12 &= -1879048193;
                } else {
                    shape2 = shape;
                }
                if ((i & 1048576) != 0) {
                    int $dirty13 = $dirty12;
                    int i18 = $dirty23 & (-15);
                    readOnly3 = readOnly2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    $dirty1 = $dirty13;
                    colors2 = OutlinedTextFieldDefaults.INSTANCE.colors($composer3, 6);
                    $dirty22 = i18;
                    shape3 = shape2;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    textStyle4 = textStyle3;
                } else {
                    int $dirty14 = $dirty12;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    $dirty1 = $dirty14;
                    colors2 = colors;
                    $dirty22 = $dirty23;
                    shape3 = shape2;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    readOnly3 = readOnly2;
                    textStyle4 = textStyle3;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty3 &= -458753;
                }
                if ((i & 65536) != 0) {
                    $dirty12 &= -3670017;
                }
                if ((i & 524288) != 0) {
                    $dirty12 &= -1879048193;
                }
                if ((i & 1048576) != 0) {
                    $dirty23 &= -15;
                }
                textStyle4 = textStyle;
                label2 = label;
                placeholder2 = placeholder;
                leadingIcon2 = leadingIcon;
                trailingIcon2 = trailingIcon;
                supportingText2 = supportingText;
                isError2 = isError;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                singleLine2 = singleLine;
                maxLines3 = maxLines;
                minLines2 = minLines;
                interactionSource3 = interactionSource;
                shape3 = shape;
                colors2 = colors;
                $dirty2 = $dirty3;
                $dirty1 = $dirty12;
                $dirty22 = $dirty23;
                modifier3 = modifier;
                enabled3 = enabled;
                readOnly3 = readOnly;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                $composer2 = $composer3;
                keyboardActions3 = keyboardActions2;
                ComposerKt.traceEventStart(-1575225237, $dirty2, $dirty1, "androidx.compose.material3.OutlinedTextField (OutlinedTextField.kt:418)");
            } else {
                $composer2 = $composer3;
                keyboardActions3 = keyboardActions2;
            }
            OutlinedTextField(value, (Function1<? super String, Unit>) onValueChange, modifier3, enabled3, readOnly3, textStyle4, (Function2<? super Composer, ? super Integer, Unit>) label2, (Function2<? super Composer, ? super Integer, Unit>) placeholder2, (Function2<? super Composer, ? super Integer, Unit>) leadingIcon2, (Function2<? super Composer, ? super Integer, Unit>) trailingIcon2, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) supportingText2, isError2, visualTransformation2, keyboardOptions2, keyboardActions3, singleLine2, maxLines3, minLines2, interactionSource3, shape3, colors2, $composer2, ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (458752 & $dirty2) | (3670016 & $dirty2) | (29360128 & $dirty2) | (234881024 & $dirty2) | (1879048192 & $dirty2), (($dirty1 << 6) & 896) | 54 | (($dirty1 << 6) & 7168) | (($dirty1 << 6) & 57344) | (($dirty1 << 6) & 458752) | (($dirty1 << 6) & 3670016) | (($dirty1 << 6) & 29360128) | (($dirty1 << 6) & 234881024) | (($dirty1 << 6) & 1879048192), (($dirty1 >> 24) & 14) | (($dirty1 >> 24) & 112) | (($dirty22 << 6) & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            keyboardActions4 = keyboardActions3;
            modifier4 = modifier3;
            enabled4 = enabled3;
            readOnly4 = readOnly3;
            textStyle5 = textStyle4;
            leadingIcon3 = leadingIcon2;
            placeholder3 = placeholder2;
            trailingIcon3 = trailingIcon2;
            supportingText3 = supportingText2;
            isError3 = isError2;
            visualTransformation3 = visualTransformation2;
            keyboardOptions3 = keyboardOptions2;
            label3 = label2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final boolean z = enabled4;
            final boolean z2 = readOnly4;
            final TextStyle textStyle6 = textStyle5;
            final Function2 function2 = label3;
            final Function2 function22 = placeholder3;
            final Function2 function23 = leadingIcon3;
            final Function2 function24 = trailingIcon3;
            final Function2 function25 = supportingText3;
            final boolean z3 = isError3;
            final VisualTransformation visualTransformation4 = visualTransformation3;
            final KeyboardOptions keyboardOptions4 = keyboardOptions3;
            final KeyboardActions keyboardActions5 = keyboardActions4;
            final boolean z4 = singleLine2;
            final int i19 = maxLines3;
            final int i20 = minLines2;
            final MutableInteractionSource mutableInteractionSource = interactionSource3;
            final Shape shape4 = shape3;
            final TextFieldColors textFieldColors = colors2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i21) {
                    OutlinedTextFieldKt.OutlinedTextField(value, onValueChange, modifier6, z, z2, textStyle6, function2, function22, function23, function24, function25, z3, visualTransformation4, keyboardOptions4, keyboardActions5, z4, i19, i20, mutableInteractionSource, shape4, textFieldColors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), RecomposeScopeImplKt.updateChangedFlags($changed2), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    public static final /* synthetic */ void OutlinedTextField(final TextFieldValue value, final Function1 onValueChange, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, Function2 label, Function2 placeholder, Function2 leadingIcon, Function2 trailingIcon, Function2 supportingText, boolean isError, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, MutableInteractionSource interactionSource, Shape shape, TextFieldColors colors, Composer $composer, final int $changed, final int $changed1, final int $changed2, final int i) {
        int i2;
        Modifier modifier2;
        boolean enabled2;
        boolean readOnly2;
        TextStyle textStyle2;
        Function2 label2;
        Function2 placeholder2;
        Function2 leadingIcon2;
        Function2 trailingIcon2;
        Function2 supportingText2;
        boolean isError2;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int maxLines2;
        int $dirty;
        TextStyle textStyle3;
        MutableInteractionSource interactionSource2;
        Shape shape2;
        Modifier modifier3;
        boolean enabled3;
        int $dirty2;
        MutableInteractionSource interactionSource3;
        int $dirty1;
        TextFieldColors colors2;
        int $dirty22;
        Shape shape3;
        boolean singleLine2;
        int maxLines3;
        int minLines2;
        boolean readOnly3;
        TextStyle textStyle4;
        Object value$iv;
        Composer $composer2;
        KeyboardActions keyboardActions3;
        KeyboardActions keyboardActions4;
        Modifier modifier4;
        boolean enabled4;
        boolean readOnly4;
        TextStyle textStyle5;
        Function2 leadingIcon3;
        Function2 placeholder3;
        Function2 trailingIcon3;
        Function2 supportingText3;
        boolean isError3;
        VisualTransformation visualTransformation3;
        KeyboardOptions keyboardOptions3;
        Function2 label3;
        Composer $composer3 = $composer.startRestartGroup(-989817544);
        ComposerKt.sourceInformation($composer3, "C(OutlinedTextField)P(19,11,10,1,13,17,6,12,7,18,16,3,20,5,4,15,8,9,2,14)455@23152L7,468@23812L39,469@23898L5,470@23961L8,472@23978L771:OutlinedTextField.kt#uh7d8r");
        int $dirty3 = $changed;
        int $dirty12 = $changed1;
        int $dirty23 = $changed2;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= $composer3.changed(value) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changedInstance(onValueChange) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty3 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty3 |= $composer3.changed(modifier) ? 256 : 128;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty3 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty3 |= $composer3.changed(enabled) ? 2048 : 1024;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty3 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty3 |= $composer3.changed(readOnly) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty3 |= ((i & 32) == 0 && $composer3.changed(textStyle)) ? 131072 : 65536;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty3 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty3 |= $composer3.changedInstance(label) ? 1048576 : 524288;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty3 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty3 |= $composer3.changedInstance(placeholder) ? 8388608 : 4194304;
        }
        int i8 = i & 256;
        if (i8 != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer3.changedInstance(leadingIcon) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i9 = i & 512;
        if (i9 != 0) {
            $dirty3 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty3 |= $composer3.changedInstance(trailingIcon) ? 536870912 : 268435456;
        }
        int i10 = i & 1024;
        if (i10 != 0) {
            $dirty12 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty12 |= $composer3.changedInstance(supportingText) ? 4 : 2;
        }
        int i11 = i & 2048;
        if (i11 != 0) {
            $dirty12 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty12 |= $composer3.changed(isError) ? 32 : 16;
        }
        int i12 = i & 4096;
        if (i12 != 0) {
            $dirty12 |= 384;
        } else if (($changed1 & 384) == 0) {
            $dirty12 |= $composer3.changed(visualTransformation) ? 256 : 128;
        }
        int i13 = i & 8192;
        if (i13 != 0) {
            $dirty12 |= 3072;
        } else if (($changed1 & 3072) == 0) {
            $dirty12 |= $composer3.changed(keyboardOptions) ? 2048 : 1024;
        }
        int i14 = i & 16384;
        if (i14 != 0) {
            $dirty12 |= 24576;
            i2 = i14;
        } else {
            i2 = i14;
            if (($changed1 & 24576) == 0) {
                $dirty12 |= $composer3.changed(keyboardActions) ? 16384 : 8192;
            }
        }
        int i15 = i & 32768;
        if (i15 != 0) {
            $dirty12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty12 |= $composer3.changed(singleLine) ? 131072 : 65536;
        }
        if (($changed1 & 1572864) == 0) {
            $dirty12 |= ((i & 65536) == 0 && $composer3.changed(maxLines)) ? 1048576 : 524288;
        }
        int i16 = i & 131072;
        if (i16 != 0) {
            $dirty12 |= 12582912;
        } else if (($changed1 & 12582912) == 0) {
            $dirty12 |= $composer3.changed(minLines) ? 8388608 : 4194304;
        }
        int i17 = i & 262144;
        if (i17 != 0) {
            $dirty12 |= 100663296;
        } else if (($changed1 & 100663296) == 0) {
            $dirty12 |= $composer3.changed(interactionSource) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($changed1 & 805306368) == 0) {
            $dirty12 |= ((i & 524288) == 0 && $composer3.changed(shape)) ? 536870912 : 268435456;
        }
        if (($changed2 & 6) == 0) {
            $dirty23 |= ((i & 1048576) == 0 && $composer3.changed(colors)) ? 4 : 2;
        }
        if (($dirty3 & 306783379) == 306783378 && (306783379 & $dirty12) == 306783378 && ($dirty23 & 3) == 2 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier;
            enabled4 = enabled;
            readOnly4 = readOnly;
            textStyle5 = textStyle;
            label3 = label;
            placeholder3 = placeholder;
            leadingIcon3 = leadingIcon;
            trailingIcon3 = trailingIcon;
            supportingText3 = supportingText;
            isError3 = isError;
            visualTransformation3 = visualTransformation;
            keyboardOptions3 = keyboardOptions;
            keyboardActions4 = keyboardActions;
            singleLine2 = singleLine;
            maxLines3 = maxLines;
            minLines2 = minLines;
            interactionSource3 = interactionSource;
            shape3 = shape;
            colors2 = colors;
            $composer2 = $composer3;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier;
                boolean enabled5 = i4 != 0 ? true : enabled;
                boolean readOnly5 = i5 != 0 ? false : readOnly;
                if ((i & 32) != 0) {
                    modifier2 = modifier5;
                    ProvidableCompositionLocal<TextStyle> localTextStyle = TextKt.getLocalTextStyle();
                    enabled2 = enabled5;
                    readOnly2 = readOnly5;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(localTextStyle);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    textStyle2 = (TextStyle) objConsume;
                    $dirty3 &= -458753;
                } else {
                    modifier2 = modifier5;
                    enabled2 = enabled5;
                    readOnly2 = readOnly5;
                    textStyle2 = textStyle;
                }
                label2 = i6 != 0 ? null : label;
                placeholder2 = i7 != 0 ? null : placeholder;
                leadingIcon2 = i8 != 0 ? null : leadingIcon;
                trailingIcon2 = i9 != 0 ? null : trailingIcon;
                supportingText2 = i10 != 0 ? null : supportingText;
                isError2 = i11 != 0 ? false : isError;
                visualTransformation2 = i12 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                keyboardOptions2 = i13 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions;
                keyboardActions2 = i2 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions;
                boolean singleLine3 = i15 != 0 ? false : singleLine;
                if ((i & 65536) != 0) {
                    maxLines2 = singleLine3 ? 1 : Integer.MAX_VALUE;
                    $dirty12 &= -3670017;
                } else {
                    maxLines2 = maxLines;
                }
                int minLines3 = i16 != 0 ? 1 : minLines;
                if (i17 != 0) {
                    $dirty = $dirty3;
                    $composer3.startReplaceableGroup(1663550460);
                    ComposerKt.sourceInformation($composer3, "CC(remember):OutlinedTextField.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    textStyle3 = textStyle2;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    $composer3.endReplaceableGroup();
                } else {
                    $dirty = $dirty3;
                    textStyle3 = textStyle2;
                    interactionSource2 = interactionSource;
                }
                MutableInteractionSource interactionSource4 = interactionSource2;
                if ((i & 524288) != 0) {
                    shape2 = OutlinedTextFieldDefaults.INSTANCE.getShape($composer3, 6);
                    $dirty12 &= -1879048193;
                } else {
                    shape2 = shape;
                }
                if ((i & 1048576) != 0) {
                    int $dirty13 = $dirty12;
                    int i18 = $dirty23 & (-15);
                    readOnly3 = readOnly2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    $dirty1 = $dirty13;
                    colors2 = OutlinedTextFieldDefaults.INSTANCE.colors($composer3, 6);
                    $dirty22 = i18;
                    shape3 = shape2;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    textStyle4 = textStyle3;
                } else {
                    int $dirty14 = $dirty12;
                    modifier3 = modifier2;
                    enabled3 = enabled2;
                    $dirty2 = $dirty;
                    interactionSource3 = interactionSource4;
                    $dirty1 = $dirty14;
                    colors2 = colors;
                    $dirty22 = $dirty23;
                    shape3 = shape2;
                    singleLine2 = singleLine3;
                    maxLines3 = maxLines2;
                    minLines2 = minLines3;
                    readOnly3 = readOnly2;
                    textStyle4 = textStyle3;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty3 &= -458753;
                }
                if ((i & 65536) != 0) {
                    $dirty12 &= -3670017;
                }
                if ((i & 524288) != 0) {
                    $dirty12 &= -1879048193;
                }
                if ((i & 1048576) != 0) {
                    $dirty23 &= -15;
                }
                textStyle4 = textStyle;
                label2 = label;
                placeholder2 = placeholder;
                leadingIcon2 = leadingIcon;
                trailingIcon2 = trailingIcon;
                supportingText2 = supportingText;
                isError2 = isError;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                singleLine2 = singleLine;
                maxLines3 = maxLines;
                minLines2 = minLines;
                interactionSource3 = interactionSource;
                shape3 = shape;
                colors2 = colors;
                $dirty2 = $dirty3;
                $dirty1 = $dirty12;
                $dirty22 = $dirty23;
                modifier3 = modifier;
                enabled3 = enabled;
                readOnly3 = readOnly;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                $composer2 = $composer3;
                keyboardActions3 = keyboardActions2;
                ComposerKt.traceEventStart(-989817544, $dirty2, $dirty1, "androidx.compose.material3.OutlinedTextField (OutlinedTextField.kt:471)");
            } else {
                $composer2 = $composer3;
                keyboardActions3 = keyboardActions2;
            }
            OutlinedTextField(value, (Function1<? super TextFieldValue, Unit>) onValueChange, modifier3, enabled3, readOnly3, textStyle4, (Function2<? super Composer, ? super Integer, Unit>) label2, (Function2<? super Composer, ? super Integer, Unit>) placeholder2, (Function2<? super Composer, ? super Integer, Unit>) leadingIcon2, (Function2<? super Composer, ? super Integer, Unit>) trailingIcon2, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) supportingText2, isError2, visualTransformation2, keyboardOptions2, keyboardActions3, singleLine2, maxLines3, minLines2, interactionSource3, shape3, colors2, $composer2, ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (458752 & $dirty2) | (3670016 & $dirty2) | (29360128 & $dirty2) | (234881024 & $dirty2) | (1879048192 & $dirty2), (($dirty1 << 6) & 896) | 54 | (($dirty1 << 6) & 7168) | (($dirty1 << 6) & 57344) | (($dirty1 << 6) & 458752) | (($dirty1 << 6) & 3670016) | (($dirty1 << 6) & 29360128) | (($dirty1 << 6) & 234881024) | (($dirty1 << 6) & 1879048192), (($dirty1 >> 24) & 14) | (($dirty1 >> 24) & 112) | (($dirty22 << 6) & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            keyboardActions4 = keyboardActions3;
            modifier4 = modifier3;
            enabled4 = enabled3;
            readOnly4 = readOnly3;
            textStyle5 = textStyle4;
            leadingIcon3 = leadingIcon2;
            placeholder3 = placeholder2;
            trailingIcon3 = trailingIcon2;
            supportingText3 = supportingText2;
            isError3 = isError2;
            visualTransformation3 = visualTransformation2;
            keyboardOptions3 = keyboardOptions2;
            label3 = label2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier4;
            final boolean z = enabled4;
            final boolean z2 = readOnly4;
            final TextStyle textStyle6 = textStyle5;
            final Function2 function2 = label3;
            final Function2 function22 = placeholder3;
            final Function2 function23 = leadingIcon3;
            final Function2 function24 = trailingIcon3;
            final Function2 function25 = supportingText3;
            final boolean z3 = isError3;
            final VisualTransformation visualTransformation4 = visualTransformation3;
            final KeyboardOptions keyboardOptions4 = keyboardOptions3;
            final KeyboardActions keyboardActions5 = keyboardActions4;
            final boolean z4 = singleLine2;
            final int i19 = maxLines3;
            final int i20 = minLines2;
            final MutableInteractionSource mutableInteractionSource = interactionSource3;
            final Shape shape4 = shape3;
            final TextFieldColors textFieldColors = colors2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.10
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i21) {
                    OutlinedTextFieldKt.OutlinedTextField(value, onValueChange, modifier6, z, z2, textStyle6, function2, function22, function23, function24, function25, z3, visualTransformation4, keyboardOptions4, keyboardActions5, z4, i19, i20, mutableInteractionSource, shape4, textFieldColors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), RecomposeScopeImplKt.updateChangedFlags($changed2), i);
                }
            });
        }
    }

    public static final void OutlinedTextFieldLayout(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super Modifier, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Function2<? super Composer, ? super Integer, Unit> function25, final Function2<? super Composer, ? super Integer, Unit> function26, final boolean singleLine, final float animationProgress, final Function1<? super Size, Unit> function1, final Function2<? super Composer, ? super Integer, Unit> function27, final Function2<? super Composer, ? super Integer, Unit> function28, final PaddingValues paddingValues, Composer $composer, final int $changed, final int $changed1) {
        PaddingValues paddingValues2;
        Object value$iv;
        Function0<ComposeUiNode> function0;
        int $dirty1;
        Composer $composer2;
        float startPadding;
        float endPadding;
        Function0<ComposeUiNode> function02;
        int $dirty;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        Function0<ComposeUiNode> function05;
        Function0<ComposeUiNode> function06;
        Function0<ComposeUiNode> function07;
        Function0<ComposeUiNode> function08;
        Composer $composer3 = $composer.startRestartGroup(1408290209);
        ComposerKt.sourceInformation($composer3, "C(OutlinedTextFieldLayout)P(4,12,7,2,3,13,8,10,9!1,5!1,11)522@25593L239,530@25880L7,531@25892L3534:OutlinedTextField.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changedInstance(function2) ? 32 : 16;
        }
        if (($changed & 384) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changedInstance(function22) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changedInstance(function23) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function24) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function25) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function26) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            $dirty2 |= $composer3.changed(singleLine) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((805306368 & $changed) == 0) {
            $dirty2 |= $composer3.changed(animationProgress) ? 536870912 : 268435456;
        }
        int $dirty3 = $dirty2;
        if (($changed1 & 6) == 0) {
            $dirty12 |= $composer3.changedInstance(function1) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty12 |= $composer3.changedInstance(function27) ? 32 : 16;
        }
        if (($changed1 & 384) == 0) {
            $dirty12 |= $composer3.changedInstance(function28) ? 256 : 128;
        }
        if (($changed1 & 3072) == 0) {
            paddingValues2 = paddingValues;
            $dirty12 |= $composer3.changed(paddingValues2) ? 2048 : 1024;
        } else {
            paddingValues2 = paddingValues;
        }
        int $dirty13 = $dirty12;
        if (($dirty3 & 306783379) != 306783378 || ($dirty13 & 1171) != 1170 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1408290209, $dirty3, $dirty13, "androidx.compose.material3.OutlinedTextFieldLayout (OutlinedTextField.kt:521)");
            }
            $composer3.startReplaceableGroup(-2058767641);
            ComposerKt.sourceInformation($composer3, "CC(remember):OutlinedTextField.kt#9igjgp");
            boolean invalid$iv = (($dirty13 & 14) == 4) | ((234881024 & $dirty3) == 67108864) | ((1879048192 & $dirty3) == 536870912) | (($dirty13 & 7168) == 2048);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new OutlinedTextFieldMeasurePolicy(function1, singleLine, animationProgress, paddingValues2);
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            OutlinedTextFieldMeasurePolicy measurePolicy = (OutlinedTextFieldMeasurePolicy) value$iv;
            $composer3.endReplaceableGroup();
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            LayoutDirection layoutDirection = (LayoutDirection) objConsume;
            int $changed$iv = ($dirty3 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv = $composer3.getCurrentCompositionLocalMap();
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf = LayoutKt.modifierMaterializerOf(modifier);
            int $changed$iv$iv = (($changed$iv << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3287constructorimpl($composer3);
            Updater.m3294setimpl($this$Layout_u24lambda_u240$iv, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3294setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
            }
            function3ModifierMaterializerOf.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i = ($changed$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1116455288, "C534@25961L11,604@28446L228:OutlinedTextField.kt#uh7d8r");
            function27.invoke($composer3, Integer.valueOf(($dirty13 >> 3) & 14));
            $composer3.startReplaceableGroup(1116455313);
            ComposerKt.sourceInformation($composer3, "537@26025L219");
            if (function23 == null) {
                $dirty1 = $dirty13;
                $composer2 = $composer3;
            } else {
                Modifier modifier$iv = LayoutIdKt.layoutId(Modifier.INSTANCE, "Leading").then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                $composer2 = $composer3;
                MeasurePolicy measurePolicy$iv = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv, false, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                int $changed$iv$iv$iv = ((((48 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function08 = constructor2;
                    $composer3.createNode(function08);
                } else {
                    function08 = constructor2;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3287constructorimpl($composer3);
                $dirty1 = $dirty13;
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                }
                function3ModifierMaterializerOf2.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i2 = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i3 = ((48 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828313575, "C541@26217L9:OutlinedTextField.kt#uh7d8r");
                function23.invoke($composer3, Integer.valueOf(($dirty3 >> 12) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            $composer3.startReplaceableGroup(1116455598);
            ComposerKt.sourceInformation($composer3, "545@26311L221");
            if (function24 != null) {
                Modifier modifier$iv2 = LayoutIdKt.layoutId(Modifier.INSTANCE, "Trailing").then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getCenter();
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                int $i$f$Box = ((48 >> 3) & 14) | ((48 >> 3) & 112);
                MeasurePolicy measurePolicy$iv2 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv2, false, $composer3, $i$f$Box);
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                int $changed$iv$iv$iv2 = ((((48 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function07 = constructor3;
                    $composer3.createNode(function07);
                } else {
                    function07 = constructor3;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3287constructorimpl($composer3);
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash3);
                }
                function3ModifierMaterializerOf3.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i4 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i5 = ((48 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828313288, "C549@26504L10:OutlinedTextField.kt#uh7d8r");
                function24.invoke($composer3, Integer.valueOf(($dirty3 >> 15) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            float startTextFieldPadding = PaddingKt.calculateStartPadding(paddingValues2, layoutDirection);
            float endTextFieldPadding = PaddingKt.calculateEndPadding(paddingValues2, layoutDirection);
            if (function23 != null) {
                float other$iv = TextFieldImplKt.getHorizontalIconPadding();
                float other$iv2 = Dp.m6111constructorimpl(startTextFieldPadding - other$iv);
                float minimumValue$iv = Dp.m6111constructorimpl(0);
                float $this$coerceAtLeast_u2dYgX7TsA$iv = Dp.m6111constructorimpl(RangesKt.coerceAtLeast(other$iv2, minimumValue$iv));
                startPadding = $this$coerceAtLeast_u2dYgX7TsA$iv;
            } else {
                startPadding = startTextFieldPadding;
            }
            if (function24 != null) {
                float other$iv3 = TextFieldImplKt.getHorizontalIconPadding();
                float other$iv4 = Dp.m6111constructorimpl(endTextFieldPadding - other$iv3);
                float minimumValue$iv2 = Dp.m6111constructorimpl(0);
                float $this$coerceAtLeast_u2dYgX7TsA$iv2 = Dp.m6111constructorimpl(RangesKt.coerceAtLeast(other$iv4, minimumValue$iv2));
                endPadding = $this$coerceAtLeast_u2dYgX7TsA$iv2;
            } else {
                endPadding = endTextFieldPadding;
            }
            $composer3.startReplaceableGroup(1116456488);
            ComposerKt.sourceInformation($composer3, "568@27199L334");
            if (function25 != null) {
                Modifier modifier$iv3 = PaddingKt.m566paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m599heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.PrefixId), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), startPadding, 0.0f, TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, 10, null);
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv3 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv3, false, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                int $changed$iv$iv$iv3 = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function06 = constructor4;
                    $composer3.createNode(function06);
                } else {
                    function06 = constructor4;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3287constructorimpl($composer3);
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash4);
                }
                function3ModifierMaterializerOf4.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i6 = ($changed$iv$iv$iv3 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                int i7 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828312285, "C575@27507L8:OutlinedTextField.kt#uh7d8r");
                function25.invoke($composer3, Integer.valueOf(($dirty3 >> 18) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            $composer3.startReplaceableGroup(1116456887);
            ComposerKt.sourceInformation($composer3, "579@27598L332");
            if (function26 != null) {
                Modifier modifier$iv4 = PaddingKt.m566paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m599heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.SuffixId), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, endPadding, 0.0f, 10, null);
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv4 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv4 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv4, false, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf5 = LayoutKt.modifierMaterializerOf(modifier$iv4);
                int $changed$iv$iv$iv4 = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function05 = constructor5;
                    $composer3.createNode(function05);
                } else {
                    function05 = constructor5;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3287constructorimpl($composer3);
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash5);
                }
                function3ModifierMaterializerOf5.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                int i9 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828311888, "C586@27904L8:OutlinedTextField.kt#uh7d8r");
                function26.invoke($composer3, Integer.valueOf(($dirty3 >> 21) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            Modifier textPadding = PaddingKt.m566paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m599heightInVpY3zN4$default(Modifier.INSTANCE, TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), function25 == null ? startPadding : Dp.m6111constructorimpl(0), 0.0f, function26 == null ? endPadding : Dp.m6111constructorimpl(0), 0.0f, 10, null);
            $composer3.startReplaceableGroup(1116457597);
            ComposerKt.sourceInformation($composer3, "599@28313L105");
            if (function3 != null) {
                function3.invoke(LayoutIdKt.layoutId(Modifier.INSTANCE, "Hint").then(textPadding), $composer3, Integer.valueOf(($dirty3 >> 3) & 112));
            }
            $composer3.endReplaceableGroup();
            Modifier modifier$iv5 = LayoutIdKt.layoutId(Modifier.INSTANCE, "TextField").then(textPadding);
            $composer3.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv5 = Alignment.INSTANCE.getTopStart();
            int $i$f$Box2 = ((384 >> 3) & 14) | ((384 >> 3) & 112);
            MeasurePolicy measurePolicy$iv5 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv5, true, $composer3, $i$f$Box2);
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv5 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
            Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf6 = LayoutKt.modifierMaterializerOf(modifier$iv5);
            int $changed$iv$iv$iv5 = ((((384 << 3) & 112) << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor6;
                $composer3.createNode(function02);
            } else {
                function02 = constructor6;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3287constructorimpl($composer3);
            Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash6 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv5))) {
                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5));
                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5), setCompositeKeyHash6);
            }
            function3ModifierMaterializerOf6.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i10 = ($changed$iv$iv$iv5 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
            int i11 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -1828311143, "C610@28649L11:OutlinedTextField.kt#uh7d8r");
            function2.invoke($composer3, Integer.valueOf(($dirty3 >> 3) & 14));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            $composer3.startReplaceableGroup(1116458015);
            ComposerKt.sourceInformation($composer3, "614@28725L237");
            if (function22 != null) {
                Modifier modifier$iv6 = LayoutIdKt.layoutId(SizeKt.wrapContentHeight$default(SizeKt.m599heightInVpY3zN4$default(Modifier.INSTANCE, DpKt.m6154lerpMdfbLM(TextFieldImplKt.getMinTextLineHeight(), TextFieldImplKt.getMinFocusedLabelLineHeight(), animationProgress), 0.0f, 2, null), null, false, 3, null), "Label");
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv6 = Alignment.INSTANCE.getTopStart();
                int $i$f$Box3 = ((0 >> 3) & 14) | ((0 >> 3) & 112);
                MeasurePolicy measurePolicy$iv6 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv6, false, $composer3, $i$f$Box3);
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv6 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv6 = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor7 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf7 = LayoutKt.modifierMaterializerOf(modifier$iv6);
                int $changed$iv$iv$iv6 = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function04 = constructor7;
                    $composer3.createNode(function04);
                } else {
                    function04 = constructor7;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3287constructorimpl($composer3);
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv6, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash7 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv6.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv6))) {
                    $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv6));
                    $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv6), setCompositeKeyHash7);
                }
                function3ModifierMaterializerOf7.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv6 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i12 = ($changed$iv$iv$iv6 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                int i13 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828310839, "C618@28953L7:OutlinedTextField.kt#uh7d8r");
                function22.invoke($composer3, Integer.valueOf(($dirty3 >> 9) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            $composer3.startReplaceableGroup(-2058764244);
            ComposerKt.sourceInformation($composer3, "623@29088L269");
            if (function28 == null) {
                $dirty = $dirty3;
            } else {
                Modifier modifier$iv7 = PaddingKt.padding(SizeKt.wrapContentHeight$default(SizeKt.m599heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.SupportingId), TextFieldImplKt.getMinSupportingTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldDefaults.m2430supportingTextPaddinga9UjIt4$material3_release$default(TextFieldDefaults.INSTANCE, 0.0f, 0.0f, 0.0f, 0.0f, 15, null));
                $composer3.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv7 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv7 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv7, false, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv7 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv7 = $composer3.getCurrentCompositionLocalMap();
                Function0<ComposeUiNode> constructor8 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf8 = LayoutKt.modifierMaterializerOf(modifier$iv7);
                int $changed$iv$iv$iv7 = ((((0 << 3) & 112) << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    function03 = constructor8;
                    $composer3.createNode(function03);
                } else {
                    function03 = constructor8;
                    $composer3.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv7 = Updater.m3287constructorimpl($composer3);
                $dirty = $dirty3;
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv7, measurePolicy$iv7, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3294setimpl($this$Layout_u24lambda_u240$iv$iv7, localMap$iv$iv7, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash8 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv7.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv7.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv7))) {
                    $this$Layout_u24lambda_u240$iv$iv7.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv7));
                    $this$Layout_u24lambda_u240$iv$iv7.apply(Integer.valueOf(compositeKeyHash$iv$iv7), setCompositeKeyHash8);
                }
                function3ModifierMaterializerOf8.invoke(SkippableUpdater.m3278boximpl(SkippableUpdater.m3279constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv7 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i14 = ($changed$iv$iv$iv7 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                int i15 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -1828310449, "C628@29343L12:OutlinedTextField.kt#uh7d8r");
                function28.invoke($composer3, Integer.valueOf(($dirty1 >> 6) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
            }
            $composer3.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $dirty1 = $dirty13;
            $composer2 = $composer3;
            $dirty = $dirty3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextFieldLayout.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i16) {
                    OutlinedTextFieldKt.OutlinedTextFieldLayout(modifier, function2, function3, function22, function23, function24, function25, function26, singleLine, animationProgress, function1, function27, function28, paddingValues, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int substractConstraintSafely(int $this$substractConstraintSafely, int from) {
        if ($this$substractConstraintSafely == Integer.MAX_VALUE) {
            return $this$substractConstraintSafely;
        }
        return $this$substractConstraintSafely - from;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculateWidth-DHJA7U0, reason: not valid java name */
    public static final int m2075calculateWidthDHJA7U0(int leadingPlaceableWidth, int trailingPlaceableWidth, int prefixPlaceableWidth, int suffixPlaceableWidth, int textFieldPlaceableWidth, int labelPlaceableWidth, int placeholderPlaceableWidth, float animationProgress, long constraints, float density, PaddingValues paddingValues) {
        int affixTotalWidth = prefixPlaceableWidth + suffixPlaceableWidth;
        int middleSection = Math.max(textFieldPlaceableWidth + affixTotalWidth, Math.max(placeholderPlaceableWidth + affixTotalWidth, MathHelpersKt.lerp(labelPlaceableWidth, 0, animationProgress)));
        int wrappedWidth = leadingPlaceableWidth + middleSection + trailingPlaceableWidth;
        float arg0$iv = paddingValues.mo513calculateLeftPaddingu2uoSUM(LayoutDirection.Ltr);
        float other$iv = paddingValues.mo514calculateRightPaddingu2uoSUM(LayoutDirection.Ltr);
        float labelHorizontalPadding = Dp.m6111constructorimpl(arg0$iv + other$iv) * density;
        int focusedLabelWidth = MathKt.roundToInt((labelPlaceableWidth + labelHorizontalPadding) * animationProgress);
        return Math.max(wrappedWidth, Math.max(focusedLabelWidth, Constraints.m6069getMinWidthimpl(constraints)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    public static final int m2074calculateHeightmKXJcVc(int leadingHeight, int trailingHeight, int prefixHeight, int suffixHeight, int textFieldHeight, int labelHeight, int placeholderHeight, int supportingHeight, float animationProgress, long constraints, float density, PaddingValues paddingValues) {
        int inputFieldHeight = ComparisonsKt.maxOf(textFieldHeight, placeholderHeight, prefixHeight, suffixHeight, MathHelpersKt.lerp(labelHeight, 0, animationProgress));
        float topPadding = paddingValues.getTop() * density;
        float actualTopPadding = MathHelpersKt.lerp(topPadding, Math.max(topPadding, labelHeight / 2.0f), animationProgress);
        float bottomPadding = paddingValues.getBottom() * density;
        float middleSectionHeight = inputFieldHeight + actualTopPadding + bottomPadding;
        return Math.max(Constraints.m6068getMinHeightimpl(constraints), Math.max(leadingHeight, Math.max(trailingHeight, MathKt.roundToInt(middleSectionHeight))) + supportingHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void place(Placeable.PlacementScope $this$place, int totalHeight, int width, Placeable leadingPlaceable, Placeable trailingPlaceable, Placeable prefixPlaceable, Placeable suffixPlaceable, Placeable textFieldPlaceable, Placeable labelPlaceable, Placeable placeholderPlaceable, Placeable containerPlaceable, Placeable supportingPlaceable, float animationProgress, boolean singleLine, float density, LayoutDirection layoutDirection, PaddingValues paddingValues) {
        int iAlign;
        float fWidthOrZero;
        Placeable.PlacementScope.m5084place70tqf50$default($this$place, containerPlaceable, IntOffset.INSTANCE.m6249getZeronOccac(), 0.0f, 2, null);
        int height = totalHeight - TextFieldImplKt.heightOrZero(supportingPlaceable);
        int topPadding = MathKt.roundToInt(paddingValues.getTop() * density);
        int startPadding = MathKt.roundToInt(PaddingKt.calculateStartPadding(paddingValues, layoutDirection) * density);
        float iconPadding = TextFieldImplKt.getHorizontalIconPadding() * density;
        if (leadingPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, leadingPlaceable, 0, Alignment.INSTANCE.getCenterVertically().align(leadingPlaceable.getHeight(), height), 0.0f, 4, null);
        }
        if (trailingPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, trailingPlaceable, width - trailingPlaceable.getWidth(), Alignment.INSTANCE.getCenterVertically().align(trailingPlaceable.getHeight(), height), 0.0f, 4, null);
        }
        if (labelPlaceable != null) {
            if (singleLine) {
                iAlign = Alignment.INSTANCE.getCenterVertically().align(labelPlaceable.getHeight(), height);
            } else {
                iAlign = topPadding;
            }
            int startPositionY = iAlign;
            int positionY = MathHelpersKt.lerp(startPositionY, -(labelPlaceable.getHeight() / 2), animationProgress);
            if (leadingPlaceable == null) {
                fWidthOrZero = 0.0f;
            } else {
                fWidthOrZero = (TextFieldImplKt.widthOrZero(leadingPlaceable) - iconPadding) * (1 - animationProgress);
            }
            int positionX = MathKt.roundToInt(fWidthOrZero) + startPadding;
            Placeable.PlacementScope.placeRelative$default($this$place, labelPlaceable, positionX, positionY, 0.0f, 4, null);
        }
        if (prefixPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, prefixPlaceable, TextFieldImplKt.widthOrZero(leadingPlaceable), place$calculateVerticalPosition(singleLine, height, topPadding, labelPlaceable, prefixPlaceable), 0.0f, 4, null);
        }
        if (suffixPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, suffixPlaceable, (width - TextFieldImplKt.widthOrZero(trailingPlaceable)) - suffixPlaceable.getWidth(), place$calculateVerticalPosition(singleLine, height, topPadding, labelPlaceable, suffixPlaceable), 0.0f, 4, null);
        }
        int textHorizontalPosition = TextFieldImplKt.widthOrZero(leadingPlaceable) + TextFieldImplKt.widthOrZero(prefixPlaceable);
        Placeable.PlacementScope.placeRelative$default($this$place, textFieldPlaceable, textHorizontalPosition, place$calculateVerticalPosition(singleLine, height, topPadding, labelPlaceable, textFieldPlaceable), 0.0f, 4, null);
        if (placeholderPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, placeholderPlaceable, textHorizontalPosition, place$calculateVerticalPosition(singleLine, height, topPadding, labelPlaceable, placeholderPlaceable), 0.0f, 4, null);
        }
        if (supportingPlaceable != null) {
            Placeable.PlacementScope.placeRelative$default($this$place, supportingPlaceable, 0, height, 0.0f, 4, null);
        }
    }

    private static final int place$calculateVerticalPosition(boolean $singleLine, int height, int topPadding, Placeable $labelPlaceable, Placeable placeable) {
        int iAlign;
        if ($singleLine) {
            iAlign = Alignment.INSTANCE.getCenterVertically().align(placeable.getHeight(), height);
        } else {
            iAlign = topPadding;
        }
        return Math.max(iAlign, TextFieldImplKt.heightOrZero($labelPlaceable) / 2);
    }

    /* JADX INFO: renamed from: outlineCutout-12SF9DM, reason: not valid java name */
    public static final Modifier m2076outlineCutout12SF9DM(Modifier $this$outlineCutout_u2d12SF9DM, final long labelSize, final PaddingValues paddingValues) {
        return DrawModifierKt.drawWithContent($this$outlineCutout_u2d12SF9DM, new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt$outlineCutout$1

            /* JADX INFO: compiled from: OutlinedTextField.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LayoutDirection.values().length];
                    try {
                        iArr[LayoutDirection.Rtl.ordinal()] = 1;
                    } catch (NoSuchFieldError e) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ContentDrawScope $this$drawWithContent) {
                float right;
                float labelWidth = Size.m3591getWidthimpl(labelSize);
                if (labelWidth > 0.0f) {
                    float innerPadding = $this$drawWithContent.mo313toPx0680j_4(OutlinedTextFieldKt.OutlinedTextFieldInnerPadding);
                    float leftLtr = $this$drawWithContent.mo313toPx0680j_4(paddingValues.mo513calculateLeftPaddingu2uoSUM($this$drawWithContent.getLayoutDirection())) - innerPadding;
                    float f = 2;
                    float rightLtr = leftLtr + labelWidth + (f * innerPadding);
                    float left = WhenMappings.$EnumSwitchMapping$0[$this$drawWithContent.getLayoutDirection().ordinal()] == 1 ? Size.m3591getWidthimpl($this$drawWithContent.mo4312getSizeNHjbRc()) - rightLtr : RangesKt.coerceAtLeast(leftLtr, 0.0f);
                    if (WhenMappings.$EnumSwitchMapping$0[$this$drawWithContent.getLayoutDirection().ordinal()] == 1) {
                        right = Size.m3591getWidthimpl($this$drawWithContent.mo4312getSizeNHjbRc()) - RangesKt.coerceAtLeast(leftLtr, 0.0f);
                    } else {
                        right = rightLtr;
                    }
                    float labelHeight = Size.m3588getHeightimpl(labelSize);
                    ContentDrawScope $this$clipRect_u2drOu3jXo$iv = $this$drawWithContent;
                    float top$iv = (-labelHeight) / f;
                    float bottom$iv = labelHeight / f;
                    int clipOp$iv = ClipOp.INSTANCE.m3751getDifferencertfAjoo();
                    DrawContext $this$withTransform_u24lambda_u246$iv$iv = $this$clipRect_u2drOu3jXo$iv.getDrawContext();
                    long previousSize$iv$iv = $this$withTransform_u24lambda_u246$iv$iv.mo4237getSizeNHjbRc();
                    $this$withTransform_u24lambda_u246$iv$iv.getCanvas().save();
                    DrawTransform $this$clipRect_rOu3jXo_u24lambda_u244$iv = $this$withTransform_u24lambda_u246$iv$iv.getTransform();
                    $this$clipRect_rOu3jXo_u24lambda_u244$iv.mo4240clipRectN_I0leg(left, top$iv, right, bottom$iv, clipOp$iv);
                    $this$drawWithContent.drawContent();
                    $this$withTransform_u24lambda_u246$iv$iv.getCanvas().restore();
                    $this$withTransform_u24lambda_u246$iv$iv.mo4238setSizeuvyYCjk(previousSize$iv$iv);
                    return;
                }
                $this$drawWithContent.drawContent();
            }
        });
    }

    public static final float getOutlinedTextFieldTopPadding() {
        return OutlinedTextFieldTopPadding;
    }
}
