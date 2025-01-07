.class public Lcom/aapoker/FaceCheckActivity$a;
.super Ljava/lang/Object;
.source "FaceCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/aapoker/FaceCheckActivity$a;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/aapoker/FaceCheckActivity;->a(I)I

    .line 2
    invoke-static {}, Lcom/aapoker/FaceCheckActivity;->a()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    const-string/jumbo p1, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v0, "\u624b\u52a8\u5173\u95ed\u4e86\u68c0\u6d4b\u754c\u9762"

    .line 3
    invoke-static {p1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "back"

    .line 4
    invoke-static {p1}, Lcom/aapoker/MainActivity;->FaceCheckFailed(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity$a;->a:Lcom/aapoker/FaceCheckActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
