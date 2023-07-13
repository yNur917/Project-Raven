.class Lcom/example/myapplication/plumber_sell$2;
.super Ljava/lang/Object;
.source "plumber_sell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/plumber_sell;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/plumber_sell;


# direct methods
.method constructor <init>(Lcom/example/myapplication/plumber_sell;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/plumber_sell;

    .line 31
    iput-object p1, p0, Lcom/example/myapplication/plumber_sell$2;->this$0:Lcom/example/myapplication/plumber_sell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 34
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/plumber_sell$2;->this$0:Lcom/example/myapplication/plumber_sell;

    const-class v2, Lcom/example/myapplication/sell_page;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/plumber_sell$2;->this$0:Lcom/example/myapplication/plumber_sell;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/plumber_sell;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
