.class public interface abstract Lcom/google/android/gms/fido/fido2/Fido2PendingIntent;
.super Ljava/lang/Object;


# virtual methods
.method public abstract hasPendingIntent()Z
.end method

.method public abstract launchPendingIntent(Landroid/app/Activity;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method
