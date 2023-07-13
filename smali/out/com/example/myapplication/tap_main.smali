.class public Lcom/example/myapplication/tap_main;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "tap_main.java"


# instance fields
.field private extra:Landroid/widget/Button;

.field private sink:Landroid/widget/Button;

.field private stove:Landroid/widget/Button;

.field private tapClick:Landroid/widget/Button;


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

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/example/myapplication/tap_main;->setContentView(I)V

    .line 22
    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/example/myapplication/tap_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/tap_main;->sink:Landroid/widget/Button;

    .line 23
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/example/myapplication/tap_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/tap_main;->stove:Landroid/widget/Button;

    .line 24
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/example/myapplication/tap_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/tap_main;->extra:Landroid/widget/Button;

    .line 25
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/example/myapplication/tap_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/tap_main;->tapClick:Landroid/widget/Button;

    .line 27
    iget-object v0, p0, Lcom/example/myapplication/tap_main;->sink:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/tap_main$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/tap_main$1;-><init>(Lcom/example/myapplication/tap_main;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/example/myapplication/tap_main;->stove:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/tap_main$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/tap_main$2;-><init>(Lcom/example/myapplication/tap_main;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/example/myapplication/tap_main;->extra:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/tap_main$3;

    invoke-direct {v1, p0}, Lcom/example/myapplication/tap_main$3;-><init>(Lcom/example/myapplication/tap_main;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/example/myapplication/tap_main;->tapClick:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/tap_main$4;

    invoke-direct {v1, p0}, Lcom/example/myapplication/tap_main$4;-><init>(Lcom/example/myapplication/tap_main;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
