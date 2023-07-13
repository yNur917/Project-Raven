.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "Flow.java"


# static fields
.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Flow"

.field public static final VERTICAL:I = 0x1

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mFlow:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 200
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 201
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Flow;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    .line 202
    if-eqz p1, :cond_1b4

    .line 203
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 205
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_1b1

    .line 206
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 207
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_31

    .line 208
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setOrientation(I)V

    goto/16 :goto_1ad

    .line 209
    :cond_31
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_40

    .line 210
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPadding(I)V

    goto/16 :goto_1ad

    .line 211
    :cond_40
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingStart:I

    const/16 v6, 0x11

    if-ne v3, v4, :cond_55

    .line 212
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1ad

    .line 213
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingStart(I)V

    goto/16 :goto_1ad

    .line 215
    :cond_55
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_68

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1ad

    .line 217
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingEnd(I)V

    goto/16 :goto_1ad

    .line 219
    :cond_68
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_77

    .line 220
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingLeft(I)V

    goto/16 :goto_1ad

    .line 221
    :cond_77
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_86

    .line 222
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingTop(I)V

    goto/16 :goto_1ad

    .line 223
    :cond_86
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_95

    .line 224
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingRight(I)V

    goto/16 :goto_1ad

    .line 225
    :cond_95
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_a4

    .line 226
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingBottom(I)V

    goto/16 :goto_1ad

    .line 227
    :cond_a4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_b3

    .line 228
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setWrapMode(I)V

    goto/16 :goto_1ad

    .line 229
    :cond_b3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_c2

    .line 230
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalStyle(I)V

    goto/16 :goto_1ad

    .line 231
    :cond_c2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_d1

    .line 232
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalStyle(I)V

    goto/16 :goto_1ad

    .line 233
    :cond_d1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_e0

    .line 234
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstHorizontalStyle(I)V

    goto/16 :goto_1ad

    .line 235
    :cond_e0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_ef

    .line 236
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setLastHorizontalStyle(I)V

    goto/16 :goto_1ad

    .line 237
    :cond_ef
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_fe

    .line 238
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstVerticalStyle(I)V

    goto/16 :goto_1ad

    .line 239
    :cond_fe
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_10d

    .line 240
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setLastVerticalStyle(I)V

    goto/16 :goto_1ad

    .line 241
    :cond_10d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v6, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_11e

    .line 242
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalBias(F)V

    goto/16 :goto_1ad

    .line 243
    :cond_11e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_12d

    .line 244
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstHorizontalBias(F)V

    goto/16 :goto_1ad

    .line 245
    :cond_12d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_13c

    .line 246
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setLastHorizontalBias(F)V

    goto/16 :goto_1ad

    .line 247
    :cond_13c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_14a

    .line 248
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstVerticalBias(F)V

    goto :goto_1ad

    .line 249
    :cond_14a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_158

    .line 250
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setLastVerticalBias(F)V

    goto :goto_1ad

    .line 251
    :cond_158
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_166

    .line 252
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalBias(F)V

    goto :goto_1ad

    .line 253
    :cond_166
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v6, 0x2

    if-ne v3, v4, :cond_175

    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalAlign(I)V

    goto :goto_1ad

    .line 255
    :cond_175
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_183

    .line 256
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalAlign(I)V

    goto :goto_1ad

    .line 257
    :cond_183
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_191

    .line 258
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalGap(I)V

    goto :goto_1ad

    .line 259
    :cond_191
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_19f

    .line 260
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalGap(I)V

    goto :goto_1ad

    .line 261
    :cond_19f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_1ad

    .line 262
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->setMaxElementsWrap(I)V

    .line 205
    .end local v3    # "attr":I
    :cond_1ad
    :goto_1ad
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    .line 265
    .end local v2    # "i":I
    :cond_1b1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_1b4
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    .line 269
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->validateParams()V

    .line 270
    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "constraint"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "child"    # Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/solver/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/VirtualLayout;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 185
    instance-of v0, p2, Landroidx/constraintlayout/solver/widgets/Flow;

    if-eqz v0, :cond_14

    .line 186
    move-object v0, p2

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 187
    .local v0, "flow":Landroidx/constraintlayout/solver/widgets/Flow;
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 188
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->setOrientation(I)V

    .line 191
    .end local v0    # "flow":Landroidx/constraintlayout/solver/widgets/Flow;
    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 151
    return-void
.end method

.method public onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V
    .registers 10
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 163
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 164
    .local v1, "widthSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 165
    .local v2, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 166
    .local v3, "heightSize":I
    if-eqz p1, :cond_21

    .line 167
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(IIII)V

    .line 168
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    goto :goto_25

    .line 170
    :cond_21
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    .line 172
    :goto_25
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .registers 4
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->applyRtl(Z)V

    .line 145
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 3
    .param p1, "bias"    # F

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstHorizontalBias(F)V

    .line 421
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 422
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 400
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstHorizontalStyle(I)V

    .line 401
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 402
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 3
    .param p1, "bias"    # F

    .line 430
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstVerticalBias(F)V

    .line 431
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 432
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setFirstVerticalStyle(I)V

    .line 411
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 412
    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 3
    .param p1, "align"    # I

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalAlign(I)V

    .line 446
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 447
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 3
    .param p1, "bias"    # F

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalBias(F)V

    .line 381
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 382
    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 3
    .param p1, "gap"    # I

    .line 471
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalGap(I)V

    .line 472
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 473
    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setHorizontalStyle(I)V

    .line 357
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 358
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 3
    .param p1, "max"    # I

    .line 491
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setMaxElementsWrap(I)V

    .line 492
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 493
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setOrientation(I)V

    .line 279
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 280
    return-void
.end method

.method public setPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setPadding(I)V

    .line 289
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 290
    return-void
.end method

.method public setPaddingBottom(I)V
    .registers 3
    .param p1, "paddingBottom"    # I

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingBottom(I)V

    .line 329
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 330
    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 3
    .param p1, "paddingLeft"    # I

    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingLeft(I)V

    .line 299
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 300
    return-void
.end method

.method public setPaddingRight(I)V
    .registers 3
    .param p1, "paddingRight"    # I

    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingRight(I)V

    .line 319
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 320
    return-void
.end method

.method public setPaddingTop(I)V
    .registers 3
    .param p1, "paddingTop"    # I

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setPaddingTop(I)V

    .line 309
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 310
    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 3
    .param p1, "align"    # I

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalAlign(I)V

    .line 462
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 463
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 3
    .param p1, "bias"    # F

    .line 390
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalBias(F)V

    .line 391
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 392
    return-void
.end method

.method public setVerticalGap(I)V
    .registers 3
    .param p1, "gap"    # I

    .line 481
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalGap(I)V

    .line 482
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 483
    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setVerticalStyle(I)V

    .line 371
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 372
    return-void
.end method

.method public setWrapMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 342
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->setWrapMode(I)V

    .line 343
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    .line 344
    return-void
.end method
