.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "ComponentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/activity/ComponentActivity;

    .line 142
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 23
    .param p1, "requestCode"    # I
    .param p4, "options"    # Landroidx/core/app/ActivityOptionsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .line 150
    .local p2, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p3, "input":Ljava/lang/Object;, "TI;"
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v13, v1, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 153
    .local v13, "activity":Landroidx/activity/ComponentActivity;
    nop

    .line 154
    invoke-virtual {v11, v13, v12}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v14

    .line 155
    .local v14, "synchronousResult":Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;, "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult<TO;>;"
    if-eqz v14, :cond_23

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$1;

    invoke-direct {v2, v1, v10, v14}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void

    .line 166
    :cond_23
    invoke-virtual {v11, v13, v12}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v15

    .line 167
    .local v15, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 169
    .local v0, "optionsBundle":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 170
    invoke-virtual {v13}, Landroidx/activity/ComponentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 172
    :cond_3f
    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 173
    invoke-virtual {v15, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 174
    invoke-virtual {v15, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v9, v0

    goto :goto_59

    .line 175
    :cond_50
    if-eqz p4, :cond_58

    .line 176
    invoke-virtual/range {p4 .. p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v9, v0

    goto :goto_59

    .line 175
    :cond_58
    move-object v9, v0

    .line 178
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    .local v9, "optionsBundle":Landroid/os/Bundle;
    :goto_59
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 181
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "permissions":[Ljava/lang/String;
    if-nez v0, :cond_70

    .line 184
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 187
    :cond_70
    invoke-static {v13, v0, v10}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 188
    .end local v0    # "permissions":[Ljava/lang/String;
    move-object v2, v9

    goto :goto_c6

    :cond_75
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 189
    nop

    .line 190
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/activity/result/IntentSenderRequest;

    .line 193
    .local v16, "request":Landroidx/activity/result/IntentSenderRequest;
    :try_start_8c
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    .line 194
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v6

    .line 195
    invoke-virtual/range {v16 .. v16}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v7
    :try_end_9c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8c .. :try_end_9c} :catch_a8

    const/4 v8, 0x0

    .line 193
    move-object v2, v13

    move/from16 v4, p1

    move-object/from16 v17, v9

    .end local v9    # "optionsBundle":Landroid/os/Bundle;
    .local v17, "optionsBundle":Landroid/os/Bundle;
    :try_start_a2
    invoke-static/range {v2 .. v9}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_a5
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 205
    goto :goto_bc

    .line 196
    :catch_a6
    move-exception v0

    goto :goto_ab

    .end local v17    # "optionsBundle":Landroid/os/Bundle;
    .restart local v9    # "optionsBundle":Landroid/os/Bundle;
    :catch_a8
    move-exception v0

    move-object/from16 v17, v9

    .line 197
    .end local v9    # "optionsBundle":Landroid/os/Bundle;
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v17    # "optionsBundle":Landroid/os/Bundle;
    :goto_ab
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroidx/activity/ComponentActivity$2$2;

    invoke-direct {v3, v1, v10, v0}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v16    # "request":Landroidx/activity/result/IntentSenderRequest;
    :goto_bc
    move-object/from16 v2, v17

    goto :goto_c6

    .line 208
    .end local v17    # "optionsBundle":Landroid/os/Bundle;
    .restart local v9    # "optionsBundle":Landroid/os/Bundle;
    :cond_bf
    move-object/from16 v17, v9

    .end local v9    # "optionsBundle":Landroid/os/Bundle;
    .restart local v17    # "optionsBundle":Landroid/os/Bundle;
    move-object/from16 v2, v17

    .end local v17    # "optionsBundle":Landroid/os/Bundle;
    .local v2, "optionsBundle":Landroid/os/Bundle;
    invoke-static {v13, v15, v10, v2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 210
    :goto_c6
    return-void
.end method
