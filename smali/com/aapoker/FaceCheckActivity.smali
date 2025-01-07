.class public Lcom/aapoker/FaceCheckActivity;
.super Landroid/app/Activity;
.source "FaceCheckActivity.java"


# static fields
.field public static a:Lcom/netease/nis/alivedetected/AliveDetector;

.field public static b:I


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/nis/alivedetected/ActionType;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Lcom/netease/nis/alivedetected/ActionType;

.field public f:Z

.field public g:Landroid/view/ViewStub;

.field public h:Landroid/view/ViewStub;

.field public i:Landroid/view/ViewStub;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:I

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/aapoker/FaceCheckActivity;->d:I

    .line 6
    sget-object v0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_STRAIGHT_AHEAD:Lcom/netease/nis/alivedetected/ActionType;

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->e:Lcom/netease/nis/alivedetected/ActionType;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/aapoker/FaceCheckActivity;->f:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->t:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->w:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->x:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->y:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    return-void
.end method

.method public static OnBackGround()V
    .locals 2

    .line 1
    sget v0, Lcom/aapoker/FaceCheckActivity;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v1, "\u5207\u5230\u4e86\u540e\u53f0"

    .line 2
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnBackGround"

    .line 3
    invoke-static {v0}, Lcom/aapoker/MainActivity;->FaceCheckFailed(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    :cond_0
    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/aapoker/FaceCheckActivity;->b:I

    return p0
.end method

.method public static synthetic a(Lcom/aapoker/FaceCheckActivity;Lcom/netease/nis/alivedetected/ActionType;)Lcom/netease/nis/alivedetected/ActionType;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/aapoker/FaceCheckActivity;->e:Lcom/netease/nis/alivedetected/ActionType;

    return-object p1
.end method

.method public static synthetic a()Lcom/netease/nis/alivedetected/AliveDetector;
    .locals 1

    .line 2
    sget-object v0, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    return-object v0
.end method

.method public static synthetic a(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic a(Lcom/aapoker/FaceCheckActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aapoker/FaceCheckActivity;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcom/aapoker/FaceCheckActivity;I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/aapoker/FaceCheckActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/aapoker/FaceCheckActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/aapoker/FaceCheckActivity;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Lcom/aapoker/FaceCheckActivity;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->e(I)V

    return-void
.end method

.method public static synthetic c(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic d(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic e(Lcom/aapoker/FaceCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic f(Lcom/aapoker/FaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aapoker/FaceCheckActivity;->d:I

    return p0
.end method

.method public static synthetic g(Lcom/aapoker/FaceCheckActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/aapoker/FaceCheckActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aapoker/FaceCheckActivity;->d:I

    return v0
.end method

.method public static synthetic h(Lcom/aapoker/FaceCheckActivity;)Lcom/netease/nis/alivedetected/ActionType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aapoker/FaceCheckActivity;->e:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0
.end method

.method public static synthetic i(Lcom/aapoker/FaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    return p0
.end method


# virtual methods
.method public InitFaceDetected(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/aapoker/FaceCheckActivity;->b:I

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173\uff1a"

    .line 2
    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/aapoker/R$id;->facesurface_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 4
    sget v1, Lcom/aapoker/R$id;->img_btn_back:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->o:Landroid/widget/ImageView;

    .line 5
    sget v1, Lcom/aapoker/R$id;->gif_action:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->n:Landroid/widget/ImageView;

    .line 6
    sget v1, Lcom/aapoker/R$id;->tv_error_tip:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->p:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/aapoker/R$id;->tv_tip:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->q:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/aapoker/R$id;->tv_step_1:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    .line 9
    sget v1, Lcom/aapoker/R$id;->tv_step_2:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    .line 10
    sget v1, Lcom/aapoker/R$id;->tv_step_3:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    .line 11
    sget v1, Lcom/aapoker/R$id;->tv_step_4:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->m:Landroid/widget/TextView;

    .line 12
    sget v1, Lcom/aapoker/R$id;->vs_step_2:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->g:Landroid/view/ViewStub;

    .line 13
    sget v1, Lcom/aapoker/R$id;->vs_step_3:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->h:Landroid/view/ViewStub;

    .line 14
    sget v1, Lcom/aapoker/R$id;->vs_step_4:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->i:Landroid/view/ViewStub;

    .line 15
    sget v1, Lcom/aapoker/R$id;->face_check_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aapoker/FaceCheckActivity;->r:Landroid/widget/TextView;

    .line 16
    iget v1, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    iget-object v2, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 18
    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    iget v3, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 21
    iget-object v1, p0, Lcom/aapoker/FaceCheckActivity;->o:Landroid/widget/ImageView;

    new-instance v2, Lcom/aapoker/FaceCheckActivity$a;

    invoke-direct {v2, p0}, Lcom/aapoker/FaceCheckActivity$a;-><init>(Lcom/aapoker/FaceCheckActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v1

    sput-object v1, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 35
    invoke-virtual {v1, p0, v0, p1}, Lcom/netease/nis/alivedetected/AliveDetector;->init(Landroid/content/Context;Lcom/netease/nis/alivedetected/NISCameraPreview;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    new-instance v0, Lcom/aapoker/FaceCheckActivity$b;

    invoke-direct {v0, p0}, Lcom/aapoker/FaceCheckActivity$b;-><init>(Lcom/aapoker/FaceCheckActivity;)V

    invoke-virtual {p1, v0}, Lcom/netease/nis/alivedetected/AliveDetector;->setDetectedListener(Lcom/netease/nis/alivedetected/DetectedListener;)V

    .line 161
    sget-object p1, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/nis/alivedetected/AliveDetector;->setSensitivity(I)V

    .line 162
    sget-object p1, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/alivedetected/AliveDetector;->setTimeOut(J)V

    .line 163
    sget-object p1, Lcom/aapoker/FaceCheckActivity;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/AliveDetector;->startDetect()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/nis/alivedetected/ActionType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 48
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/nis/alivedetected/ActionType;

    iget-object v2, v2, Lcom/netease/nis/alivedetected/ActionType;->actionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string p1, ""

    return-object p1
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1

    .line 56
    sget v0, Lcom/aapoker/R$drawable;->circle_tv_focus:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p2, "\u8bf7\u6b63\u89c6\u6444\u50cf\u5934\u89c6\u91ce\u4e2d\u95f4\u5e76\u4fdd\u6301\u4e0d\u52a8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "\u8bf7\u79fb\u52a8\u4eba\u8138\u5230\u6444\u50cf\u5934\u89c6\u91ce\u4e2d\u95f4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 27
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->p:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    iget v0, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 32
    :cond_1
    iget p1, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 34
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->p:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object p2, p0, Lcom/aapoker/FaceCheckActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->p:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->g:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->h:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->i:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->g:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 18
    sget p1, Lcom/aapoker/R$id;->tv_step_3:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->h:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->g:Landroid/view/ViewStub;

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/widget/TextView;)V
    .locals 1

    .line 13
    sget v0, Lcom/aapoker/R$drawable;->circle_tv_un_focus:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public final b()Z
    .locals 5

    const-string v0, "activity"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "\u4eba\u8138\u68c0\u6d4b\u754c\u9762\u5207\u5230\u540e\u53f0\uff1a"

    const-string v3, "com.unity3d.player.UnityPlayer"

    .line 10
    invoke-static {v2, v3}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 12
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/ActionType;

    .line 5
    sget-object v0, Lcom/aapoker/FaceCheckActivity$c;->a:[I

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/ActionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    const-string/jumbo v0, "\u4e0d\u652f\u6301\u7684\u52a8\u4f5c\u7c7b\u578b"

    .line 20
    invoke-static {p1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/aapoker/R$drawable;->open_eyes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/aapoker/R$drawable;->turn_right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/aapoker/R$drawable;->turn_left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/aapoker/R$drawable;->open_mouth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aapoker/FaceCheckActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524d\u68c0\u6d4b\u6b65\u9aa4\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u4eba\u8138\u68c0\u6d4b\u76f8\u5173"

    invoke-static {v1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "2"

    const-string v2, "1"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v3, "3"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 21
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 23
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 25
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->m:Landroid/widget/TextView;

    const-string v0, "4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 29
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 31
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->b(Landroid/widget/TextView;)V

    .line 35
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->a(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->d(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/aapoker/FaceCheckActivity;->c(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/aapoker/R$layout;->activity_face_check:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->t:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u5f20\u5f20\u5634"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->t:Ljava/util/ArrayList;

    const-string v0, "Open your mouth"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->t:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u5f35\u5f35\u5634"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u8bf7\u6b63\u5bf9\u624b\u673a\u5c4f\u5e55\n\u5c06\u9762\u90e8\u79fb\u5165\u6846\u5185"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    const-string v0, "Please face the phone screen\nMove your face into the frame"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->u:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u8acb\u6b63\u5c0d\u624b\u6a5f\u5c4f\u5e55\n\u5c07\u9762\u90e8\u79fb\u5165\u6846\u5167"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u8bf7\u6b63\u89c6\u6444\u50cf\u5934\n\u5e76\u4fdd\u6301\u4e0d\u52a8"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    const-string v0, "Please look directly at the camera\nand remain still"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->v:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u8acb\u6b63\u8996\u651d\u50cf\u982d\n\u4e26\u4fdd\u6301\u4e0d\u52d5"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->w:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u6162\u6162\u5de6\u8f6c\u5934"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->w:Ljava/util/ArrayList;

    const-string v0, "Slowly turn your head to the left"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->w:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u6162\u6162\u5de6\u8f49\u982d"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->x:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u6162\u6162\u53f3\u8f6c\u5934"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->x:Ljava/util/ArrayList;

    const-string v0, "Slowly turn your head to the right"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->x:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u6162\u6162\u53f3\u8f49\u982d"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->y:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u7728\u7728\u773c"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->y:Ljava/util/ArrayList;

    const-string v1, "Wink"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    const-string/jumbo v0, "\u4eba\u8138\u68c0\u6d4b"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    const-string v1, "Face detection"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/aapoker/FaceCheckActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "languageType"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/aapoker/FaceCheckActivity;->s:I

    const-string/jumbo p1, "\u6253\u5f00\u4eba\u8138\u68c0\u6d4b\u754c\u9762\uff1a"

    .line 35
    invoke-static {p1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/aapoker/FaceCheckActivity;->InitFaceDetected(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/aapoker/FaceCheckActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/aapoker/FaceCheckActivity;->OnBackGround()V

    :cond_0
    return-void
.end method
