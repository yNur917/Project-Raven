.class public Lcom/example/myapplication/plumber_page;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "plumber_page.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/example/myapplication/plumber_page;->setContentView(I)V

    .line 13
    return-void
.end method
