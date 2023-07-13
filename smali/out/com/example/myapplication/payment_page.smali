.class public Lcom/example/myapplication/payment_page;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "payment_page.java"


# instance fields
.field private confirm1:Landroid/widget/Button;


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

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/example/myapplication/payment_page;->setContentView(I)V

    .line 19
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/example/myapplication/payment_page;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/payment_page;->confirm1:Landroid/widget/Button;

    .line 21
    new-instance v1, Lcom/example/myapplication/payment_page$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/payment_page$1;-><init>(Lcom/example/myapplication/payment_page;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
