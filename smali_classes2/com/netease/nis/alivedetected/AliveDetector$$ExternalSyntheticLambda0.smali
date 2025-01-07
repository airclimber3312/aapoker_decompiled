.class public final synthetic Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/nis/alivedetected/AliveDetector;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/nis/alivedetected/AliveDetector;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;->f$0:Lcom/netease/nis/alivedetected/AliveDetector;

    iput-boolean p2, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;->f$0:Lcom/netease/nis/alivedetected/AliveDetector;

    iget-boolean v1, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/netease/nis/alivedetected/AliveDetector;->$r8$lambda$Za_edEhScrfiV-KV2ns4LdDTS1s(Lcom/netease/nis/alivedetected/AliveDetector;Z)V

    return-void
.end method
