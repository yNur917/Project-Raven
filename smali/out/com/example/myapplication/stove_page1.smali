.class public Lcom/example/myapplication/stove_page1;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "stove_page1.java"


# instance fields
.field private sm1click:Landroid/widget/Button;

.field private sm2click:Landroid/widget/Button;


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
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/example/myapplication/stove_page1;->setContentView(I)V

    .line 20
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/example/myapplication/stove_page1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/stove_page1;->sm1click:Landroid/widget/Button;

    .line 21
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/example/myapplication/stove_page1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/stove_page1;->sm2click:Landroid/widget/Button;

    .line 23
    iget-object v0, p0, Lcom/example/myapplication/stove_page1;->sm1click:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/stove_page1$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/stove_page1$1;-><init>(Lcom/example/myapplication/stove_page1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/example/myapplication/stove_page1;->sm2click:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/stove_page1$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/stove_page1$2;-><init>(Lcom/example/myapplication/stove_page1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
