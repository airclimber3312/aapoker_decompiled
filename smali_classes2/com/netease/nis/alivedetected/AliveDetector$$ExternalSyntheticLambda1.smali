.class public final synthetic Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/nis/alivedetected/AliveDetector;

.field public final synthetic f$1:Lcom/netease/nis/alivedetected/ActionType;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/nis/alivedetected/AliveDetector;Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$0:Lcom/netease/nis/alivedetected/AliveDetector;

    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$1:Lcom/netease/nis/alivedetected/ActionType;

    iput-object p3, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$0:Lcom/netease/nis/alivedetected/AliveDetector;

    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$1:Lcom/netease/nis/alivedetected/ActionType;

    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nis/alivedetected/AliveDetector;->$r8$lambda$HVEKbNXu_I5ZHmrcQTCLGl8KCVU(Lcom/netease/nis/alivedetected/AliveDetector;Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    return-void
.end method
