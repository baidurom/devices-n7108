.class public Lcom/android/internal/policy/impl/sec/inkeffect/Def;
.super Ljava/lang/Object;
.source "Def.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;
    }
.end annotation


# static fields
.field public static MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method
