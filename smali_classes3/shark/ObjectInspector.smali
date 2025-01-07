.class public interface abstract Lshark/ObjectInspector;
.super Ljava/lang/Object;
.source "ObjectInspector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/ObjectInspector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lshark/ObjectInspector;",
        "",
        "inspect",
        "",
        "reporter",
        "Lshark/ObjectReporter;",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/ObjectInspector$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lshark/ObjectInspector$Companion;->$$INSTANCE:Lshark/ObjectInspector$Companion;

    sput-object v0, Lshark/ObjectInspector;->Companion:Lshark/ObjectInspector$Companion;

    return-void
.end method


# virtual methods
.method public abstract inspect(Lshark/ObjectReporter;)V
.end method
