const $form = $("#create-form, #edit-form");

$("#create-button").on("click", function (e) {
    handleCreateFormSubmit(e);
});

$("#edit-button").on("click", function (e) {
    handleEditFormSubmit(e);
});

// $form.find("input").each(function () {
//     updateInputColor(this);
// });

$form.on("input", "input", function () {
    updateInputColor(this);
});

$(".delete-button").each(function () {
    addDeleteButtonClickHandler(this);
});

function validateForm() {
    let valid = true;

    $form.find("input").each(function () {
        if (!$(this).val()) {
            updateInputColor(this);
            valid = false;
        }
    });

    if (!valid) {
        alert("Please fill out all fields");
    }

    return valid;
}

function updateInputColor(input) {
    const $input = $(input);
    if ($input.val()) {
        $input.prev().removeClass("text-danger");
        $input.removeClass("border-2 border-danger");
    } else {
        $input.prev().addClass("text-danger");
        $input.addClass("border-2 border-danger");
    }
}

function handleFormSubmit(e) {
    if (!validateForm()) {
        $("#create-form input").each(function () {
            updateInputColor(this);
        });
        alert("Please fill out all fields");
    }
}

function handleEditFormSubmit(e) {
    e.preventDefault();

    if (!validateForm()) {
        return;
    }

    $form.submit();
}

function animateRowAddition(row) {
    const $row = $(row);
    $row.css({
        position: "relative",
        left: "20%",
        opacity: 0,
    });
    $row.animate(
        {
            left: 0,
            opacity: 1,
        },
        600,
        () => {
            $newRow.removeAttr("style");
        }
    );
}

function handleCreateFormSubmit(e) {
    e.preventDefault();

    if (!validateForm()) {
        return;
    }

    const formData = $form.serialize();
    $.ajax({
        type: "POST",
        url: $form.attr("action"),
        data: formData,
        success: (data) => {
            try {
                data = JSON.parse(data);
            } catch (e) {
                console.log(data);
                alert("There is an invalid field in the form. Please check your input and try again.");
                return;
            }

            if (data?.row) {
                $("tbody").prepend(data.row);
                animateRowAddition($("tbody tr:first-child"));
            } else if (data?.table) {
                let firstRows = $("tbody tr");
                $("table").html(data.table);

                let $insertedRow;
                let $currentRows = $("tbody tr");

                for (let i = 0; i < $currentRows.length; ++i) {
                    if (
                        i < firstRows.length &&
                        $currentRows[i].innerText.replace(/\s/g, "") !== firstRows[i].innerText.replace(/\s/g, "")
                    ) {
                        $insertedRow = $($currentRows[i]);
                        break;
                    }
                }

                animateRowAddition($insertedRow);
            }

            $form.trigger("reset");
            addDeleteButtonClickHandler($("tr:first-child .delete-button"));
        },
    });
}

function addDeleteButtonClickHandler(button) {
    const $button = $(button);
    $button.on("click", function (e) {
        e.preventDefault();

        if (!confirm("Are you sure you want to delete this item?")) {
            return;
        }

        const deleteUrl = $button.attr("href");
        const $tr = $button.closest("tr");

        $.ajax({
            type: "DELETE",
            url: deleteUrl,
            success: (data) => {
                const response = data ? JSON.parse(data) : null;
                if (response?.error) {
                    alert(response.error);
                    return;
                }

                $tr.css("position", "relative");
                $tr.animate(
                    {
                        opacity: 0,
                        left: "100%",
                    },
                    600,
                    () => {
                        $tr.remove();
                    }
                );
            },
        });
    });
}
