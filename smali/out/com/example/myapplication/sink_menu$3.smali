.class Lcom/example/myapplication/sink_menu$3;
.super Ljava/lang/Object;
.source "sink_menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/sink_menu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/sink_menu;


# direct methods
.method constructor <init>(Lcom/example/myapplication/sink_menu;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/sink_menu;

    .line 43
    iput-object p1, p0, Lcom/example/myapplication/sink_menu$3;->this$0:Lcom/example/myapplication/sink_menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/sink_menu$3;->this$0:Lcom/example/myapplication/sink_menu;

    const-class v2, Lcom/example/myapplication/plumber_sell;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent3":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/sink_menu$3;->this$0:Lcom/example/myapplication/sink_menu;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/sink_menu;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
