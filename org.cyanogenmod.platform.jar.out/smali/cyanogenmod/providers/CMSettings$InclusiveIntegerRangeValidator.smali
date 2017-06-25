.class final Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMin:I

    iput p2, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMax:I

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMin:I

    if-lt v1, v3, :cond_0

    iget v3, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    return v2
.end method
