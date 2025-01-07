.class public Lcom/aapoker/FaceCheckActivity$b;
.super Ljava/lang/Object;
.source "FaceCheckActivity.java"

# interfaces
.implements Lcom/netease/nis/alivedetected/DetectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/FaceCheckActivity;->InitFaceDetected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aapoker/FaceCheckActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/FaceCheckActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCommands([Lcom/netease/nis/alivedetected/ActionType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/aapoker/FaceCheckActivity;->b(Lcom/aapoker/FaceCheckActivity;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v1, "\u6d3b\u4f53\u68c0\u6d4b\u52a8\u4f5c\u5e8f\u5217\u4e3a:$commands"

    .line 10
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;I)V

    return-void
.end method

.method public onCheck()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->a(I)I

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v1, "\u4eba\u8138\u68c0\u6d4b\u5f20OnCheck"

    .line 2
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x4

    .line 1
    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->a(I)I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "listener [onError] \u6d3b\u4f53\u68c0\u6d4b\u51fa\u9519,\u539f\u56e0:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    invoke-static {p3, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/aapoker/MainActivity;->FaceCheckFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onOverTime()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->a(I)I

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v1, "\u4eba\u8138\u68c0\u6d4b\u8d85\u65f6"

    .line 2
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "outtime"

    .line 3
    invoke-static {v0}, Lcom/aapoker/MainActivity;->FaceCheckFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onPassed(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->a(I)I

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/aapoker/MainActivity;->FaceCheckSuccess(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6d3b\u4f53\u68c0\u6d4b\u901a\u8fc7,token is"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "error"

    .line 11
    invoke-static {p1}, Lcom/aapoker/MainActivity;->FaceCheckFailed(Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6d3b\u4f53\u68c0\u6d4b\u4e0d\u901a\u8fc7,token is"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onReady(Z)V
    .locals 1

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "\u6d3b\u4f53\u68c0\u6d4b\u5f15\u64ce\u521d\u59cb\u5316\u5b8c\u6210"

    .line 1
    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u6d3b\u4f53\u68c0\u6d4b\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25"

    .line 3
    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/netease/nis/alivedetected/ActionType;->actionTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stateTip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CurrentCheckStepIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    .line 3
    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->f(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    .line 4
    invoke-static {v1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_PASSED:Lcom/netease/nis/alivedetected/ActionType;

    if-ne p1, v0, :cond_0

    iget-object v0, p1, Lcom/netease/nis/alivedetected/ActionType;->actionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->h(Lcom/aapoker/FaceCheckActivity;)Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nis/alivedetected/ActionType;->actionId:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->g(Lcom/aapoker/FaceCheckActivity;)I

    .line 12
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->f(Lcom/aapoker/FaceCheckActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->f(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/aapoker/FaceCheckActivity;->b(Lcom/aapoker/FaceCheckActivity;I)V

    .line 15
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v0}, Lcom/aapoker/FaceCheckActivity;->e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v2}, Lcom/aapoker/FaceCheckActivity;->f(Lcom/aapoker/FaceCheckActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nis/alivedetected/ActionType;

    invoke-static {v0, v1}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Lcom/netease/nis/alivedetected/ActionType;)Lcom/netease/nis/alivedetected/ActionType;

    .line 18
    :cond_0
    sget-object v0, Lcom/aapoker/FaceCheckActivity$c;->a:[I

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/ActionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 52
    :pswitch_0
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 53
    :pswitch_1
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p2}, Lcom/aapoker/FaceCheckActivity;->d(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 55
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->d(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 56
    :pswitch_2
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p2}, Lcom/aapoker/FaceCheckActivity;->c(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 58
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->c(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p2}, Lcom/aapoker/FaceCheckActivity;->b(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->b(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 62
    :pswitch_4
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p2}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 64
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-static {v1}, Lcom/aapoker/FaceCheckActivity;->i(Lcom/aapoker/FaceCheckActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 65
    :pswitch_5
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$b;->a:Lcom/aapoker/FaceCheckActivity;

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lcom/aapoker/FaceCheckActivity;->a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
