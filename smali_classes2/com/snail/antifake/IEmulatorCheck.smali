.class public interface abstract Lcom/snail/antifake/IEmulatorCheck;
.super Ljava/lang/Object;
.source "IEmulatorCheck.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snail/antifake/IEmulatorCheck$Stub;,
        Lcom/snail/antifake/IEmulatorCheck$Default;
    }
.end annotation


# virtual methods
.method public abstract isEmulator()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract kill()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
