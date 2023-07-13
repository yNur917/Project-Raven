.class public Lcom/example/myapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private login:Landroid/widget/Button;

.field private signup:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/MainActivity;->login:Landroid/widget/Button;

    .line 20
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/MainActivity;->signup:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lcom/example/myapplication/MainActivity;->login:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/MainActivity$1;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/example/myapplication/MainActivity;->signup:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/MainActivity$2;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
