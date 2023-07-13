.class Lcom/example/myapplication/tap_main$4;
.super Ljava/lang/Object;
.source "tap_main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/tap_main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/tap_main;


# direct methods
.method constructor <init>(Lcom/example/myapplication/tap_main;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/tap_main;

    .line 51
    iput-object p1, p0, Lcom/example/myapplication/tap_main$4;->this$0:Lcom/example/myapplication/tap_main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/tap_main$4;->this$0:Lcom/example/myapplication/tap_main;

    const-class v2, Lcom/example/myapplication/tap_page1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent4":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/tap_main$4;->this$0:Lcom/example/myapplication/tap_main;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/tap_main;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
