.class public Lcom/example/myapplication/stovem1_page;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "stovem1_page.java"


# instance fields
.field private next1:Landroid/widget/Button;


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
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/example/myapplication/stovem1_page;->setContentView(I)V

    .line 19
    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/example/myapplication/stovem1_page;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/stovem1_page;->next1:Landroid/widget/Button;

    .line 21
    new-instance v1, Lcom/example/myapplication/stovem1_page$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/stovem1_page$1;-><init>(Lcom/example/myapplication/stovem1_page;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
