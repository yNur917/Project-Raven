.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1037
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1042
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1043
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1046
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_24

    .line 1049
    :cond_1c
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 1051
    :goto_24
    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;->previousAnimatedIntValue:I

    .line 1052
    return-void
.end method
