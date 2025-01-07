.class public interface abstract Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
.super Ljava/lang/Object;
.source "ISendStat.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendConfig(Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;)V
.end method

.method public abstract sendStat(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z
.end method
