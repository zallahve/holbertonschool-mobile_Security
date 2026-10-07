package androidx.compose.foundation.text2.input;

import androidx.compose.foundation.text2.input.TextFieldState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: TextFieldState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a&\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0001H\u0007\u001a6\u0010\r\u001a\u00020\u000e*\u00020\u00012\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0010H\u0087@¢\u0006\u0002\u0010\u0014\u001a\u0014\u0010\u0015\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0006H\u0007\u001a\u0014\u0010\u0017\u001a\u00020\f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0006H\u0007\u001a\u0012\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u0019*\u00020\u0001H\u0007\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u001a"}, d2 = {"TextFieldState", "Landroidx/compose/foundation/text2/input/TextFieldState;", "initialValue", "Landroidx/compose/ui/text/input/TextFieldValue;", "rememberTextFieldState", "initialText", "", "initialSelectionInChars", "Landroidx/compose/ui/text/TextRange;", "rememberTextFieldState-Le-punE", "(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text2/input/TextFieldState;", "clearText", "", "forEachTextValue", "", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setTextAndPlaceCursorAtEnd", "text", "setTextAndSelectAll", "textAsFlow", "Lkotlinx/coroutines/flow/Flow;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TextFieldStateKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text2.input.TextFieldStateKt$forEachTextValue$1, reason: invalid class name */
    /* JADX INFO: compiled from: TextFieldState.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text2.input.TextFieldStateKt", f = "TextFieldState.kt", i = {}, l = {566}, m = "forEachTextValue", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TextFieldStateKt.forEachTextValue(null, null, this);
        }
    }

    public static final TextFieldState TextFieldState(TextFieldValue initialValue) {
        return new TextFieldState(initialValue.getText(), initialValue.getSelection(), (DefaultConstructorMarker) null);
    }

    public static final Flow<TextFieldCharSequence> textAsFlow(final TextFieldState $this$textAsFlow) {
        return SnapshotStateKt.snapshotFlow(new Function0<TextFieldCharSequence>() { // from class: androidx.compose.foundation.text2.input.TextFieldStateKt.textAsFlow.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextFieldCharSequence invoke() {
                return $this$textAsFlow.getText();
            }
        });
    }

    /* JADX INFO: renamed from: rememberTextFieldState-Le-punE, reason: not valid java name */
    public static final TextFieldState m1091rememberTextFieldStateLepunE(final String initialText, final long initialSelectionInChars, Composer $composer, int $changed, int i) {
        Object value$iv;
        $composer.startReplaceableGroup(-855595317);
        ComposerKt.sourceInformation($composer, "C(rememberTextFieldState)P(1,0:c#ui.text.TextRange)471@18563L107:TextFieldState.kt#b7kqo7");
        if ((i & 1) != 0) {
            initialText = "";
        }
        if ((i & 2) != 0) {
            initialSelectionInChars = TextRangeKt.TextRange(initialText.length());
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-855595317, $changed, -1, "androidx.compose.foundation.text2.input.rememberTextFieldState (TextFieldState.kt:471)");
        }
        Object[] objArr = new Object[0];
        TextFieldState.Saver saver = TextFieldState.Saver.INSTANCE;
        $composer.startReplaceableGroup(650674345);
        boolean invalid$iv = $composer.changed(initialText) | $composer.changed(initialSelectionInChars);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = new Function0<TextFieldState>() { // from class: androidx.compose.foundation.text2.input.TextFieldStateKt$rememberTextFieldState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TextFieldState invoke() {
                    return new TextFieldState(initialText, initialSelectionInChars, (DefaultConstructorMarker) null);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        $composer.endReplaceableGroup();
        TextFieldState textFieldState = (TextFieldState) RememberSaveableKt.m3380rememberSaveable(objArr, (Saver) saver, (String) null, (Function0) value$iv, $composer, 56, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceableGroup();
        return textFieldState;
    }

    public static final void setTextAndPlaceCursorAtEnd(TextFieldState $this$setTextAndPlaceCursorAtEnd, String text) {
        TextFieldBuffer mutableValue$iv = $this$setTextAndPlaceCursorAtEnd.startEdit($this$setTextAndPlaceCursorAtEnd.getText());
        mutableValue$iv.replace(0, mutableValue$iv.getLength(), text);
        TextFieldBufferKt.placeCursorAtEnd(mutableValue$iv);
        $this$setTextAndPlaceCursorAtEnd.commitEdit(mutableValue$iv);
    }

    public static final void setTextAndSelectAll(TextFieldState $this$setTextAndSelectAll, String text) {
        TextFieldBuffer mutableValue$iv = $this$setTextAndSelectAll.startEdit($this$setTextAndSelectAll.getText());
        mutableValue$iv.replace(0, mutableValue$iv.getLength(), text);
        TextFieldBufferKt.selectAll(mutableValue$iv);
        $this$setTextAndSelectAll.commitEdit(mutableValue$iv);
    }

    public static final void clearText(TextFieldState $this$clearText) {
        TextFieldBuffer mutableValue$iv = $this$clearText.startEdit($this$clearText.getText());
        TextFieldBufferKt.delete(mutableValue$iv, 0, mutableValue$iv.getLength());
        TextFieldBufferKt.placeCursorAtEnd(mutableValue$iv);
        $this$clearText.commitEdit(mutableValue$iv);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object forEachTextValue(androidx.compose.foundation.text2.input.TextFieldState r4, kotlin.jvm.functions.Function2<? super androidx.compose.foundation.text2.input.TextFieldCharSequence, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r5, kotlin.coroutines.Continuation<?> r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.foundation.text2.input.TextFieldStateKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r6
            androidx.compose.foundation.text2.input.TextFieldStateKt$forEachTextValue$1 r0 = (androidx.compose.foundation.text2.input.TextFieldStateKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            androidx.compose.foundation.text2.input.TextFieldStateKt$forEachTextValue$1 r0 = new androidx.compose.foundation.text2.input.TextFieldStateKt$forEachTextValue$1
            r0.<init>(r6)
        L19:
            r6 = r0
            java.lang.Object r0 = r6.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r6.label
            switch(r2) {
                case 0: goto L31;
                case 1: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            kotlin.ResultKt.throwOnFailure(r0)
            goto L42
        L31:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.flow.Flow r2 = textAsFlow(r4)
            r3 = 1
            r6.label = r3
            java.lang.Object r4 = kotlinx.coroutines.flow.FlowKt.collectLatest(r2, r5, r6)
            if (r4 != r1) goto L42
            return r1
        L42:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "textAsFlow expected not to complete without exception"
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text2.input.TextFieldStateKt.forEachTextValue(androidx.compose.foundation.text2.input.TextFieldState, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
