.class public Lcom/example/myapplication/plumber_sell;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "plumber_sell.java"


# instance fields
.field private plumber:Landroid/widget/Button;

.field private sell:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/example/myapplication/plumber_sell;->setContentView(I)V

    .line 20
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/example/myapplication/plumber_sell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/plumber_sell;->plumber:Landroid/widget/Button;

    .line 21
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/example/myapplication/plumber_sell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/plumber_sell;->sell:Landroid/widget/Button;

    .line 23
    iget-object v0, p0, Lcom/example/myapplication/plumber_sell;->plumber:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/plumber_sell$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/plumber_sell$1;-><init>(Lcom/example/myapplication/plumber_sell;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/example/myapplication/plumber_sell;->sell:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/plumber_sell$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/plumber_sell$2;-><init>(Lcom/example/myapplication/plumber_sell;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
