.class public Lcom/example/myapplication/sink_page1;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "sink_page1.java"


# instance fields
.field private skm1click:Landroid/widget/Button;

.field private skm2click:Landroid/widget/Button;


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

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/example/myapplication/sink_page1;->setContentView(I)V

    .line 21
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/example/myapplication/sink_page1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/sink_page1;->skm1click:Landroid/widget/Button;

    .line 22
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/example/myapplication/sink_page1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/sink_page1;->skm2click:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/example/myapplication/sink_page1;->skm1click:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/sink_page1$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/sink_page1$1;-><init>(Lcom/example/myapplication/sink_page1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/example/myapplication/sink_page1;->skm2click:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/sink_page1$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/sink_page1$2;-><init>(Lcom/example/myapplication/sink_page1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
